#!/bin/bash

mysqlcmd="mysql -uroot -hmariadb -p$MYSQL_ROOT_PASSWORD "

while true; do
  out="`$mysqlcmd -e "SELECT COUNT(*) FROM mysql.user;" 2>&1`"
  echo -e $out
  echo "$out" | grep "COUNT"
  if [ $? -eq 0 ]; then
    #echo -e "\n\e[92mServer is up !\e[0m\n"
    break
  fi
  echo -e "\nDB server still isn't up, waiting ...\n"
  sleep 3
done

cp /Config.pm ${OTRS_ROOT}Kernel/Config.pm
#cp /ZZZAuto.pm ${OTRS_ROOT}Kernel/Config/Files/ZZZAuto.pm

sed "s#otrs_db_password#$OTRS_DB_PASSWORD#g" -i ${OTRS_ROOT}Kernel/Config.pm
sed "s#ldap_password#$LDAP_PASSWORD#g" -i ${OTRS_ROOT}Kernel/Config.pm
sed "s#ldap_host#$LDAP_HOST#g" -i ${OTRS_ROOT}Kernel/Config.pm

sed "s#host_ip_address#$SERVER_NAME#g" -i /etc/httpd/conf.d/zzz_otrs.conf
sed "s#User apache#User otrs#g" -i /etc/httpd/conf/httpd.conf

$mysqlcmd -e 'use otrs'
if [ $? -ne 0  ]; then
  $mysqlcmd -e "CREATE DATABASE IF NOT EXISTS otrs;"
  $mysqlcmd -e " GRANT ALL ON otrs.* to 'otrs'@'%' identified by '$OTRS_DB_PASSWORD'";

  $mysqlcmd otrs < ${OTRS_ROOT}scripts/database/otrs-schema.mysql.sql
  $mysqlcmd otrs < ${OTRS_ROOT}scripts/database/otrs-initial_insert.mysql.sql
fi

${OTRS_ROOT}bin/otrs.SetPermissions.pl --otrs-user=otrs --web-group=apache /opt/otrs

echo -e "Setting password for default admin account root@localhost..."
#${OTRS_ROOT}bin/otrs.SetPassword.pl --agent root@localhost $OTRS_ROOT_PASSWORD
sudo -u otrs ${OTRS_ROOT}bin/otrs.Console.pl Admin::User::SetPassword root@localhost $OTRS_ROOT_PASSWORD

${OTRS_ROOT}bin/Cron.sh start otrs &
wait
#${OTRS_ROOT}bin/otrs.Scheduler.pl -w 1 &
sudo -u otrs ${OTRS_ROOT}bin/otrs.Daemon.pl start
wait
#${OTRS_ROOT}bin/otrs.RebuildConfig.pl &
sudo -u otrs ${OTRS_ROOT}bin/otrs.Console.pl Maint::Config::Rebuild
wait
sudo -u otrs ${OTRS_ROOT}bin/otrs.Console.pl Maint::Cache::Delete

#wait
#${OTRS_ROOT}bin/otrs.DeleteCache.pl
#${OTRS_ROOT}bin/otrs.RebuildTicketIndex.pl &

#too slow for running this at restart
#sudo -u otrs ${OTRS_ROOT}bin/otrs.Console.pl Maint::Ticket::EscalationIndexRebuild
#sudo -u otrs ${OTRS_ROOT}bin/otrs.Console.pl Maint::Ticket::FulltextIndexRebuild

mkdir -p /var/log/otrs
touch /var/log/otrs/otrs.log
chown -R otrs:apache /var/log/otrs

sudo -u otrs ${OTRS_ROOT}bin/otrs.Console.pl Admin::Package::ReinstallAll >> /var/log/otrs/otrs.log

wait

cat /ssl/server.crt > /etc/pki/tls/certs/star-eionet2012.crt
cat /ssl/server.key > /etc/pki/tls/private/star-eionet2012.key
cat /ssl/server-chain.crt > /etc/pki/tls/certs/rapidssl_ca.crt

chmod 400 /etc/pki/tls/certs/*
chmod 400 /etc/pki/tls/private/*

# Configure email
if [ -z "$MAIL_ADDRESSES" ]; then
   MAIL_ADDRESSES="@$(hostname)"
fi
> /etc/mail/virtusertable
for address in $MAIL_ADDRESSES
do
    echo "$address  otrs" >> /etc/mail/virtusertable &
    wait
done
( cd /etc/mail ; make )  &
wait
sed -e 's#  *#\n#g'  <<< "$MAIL_ADDRESSES" | sed -e 's#.*@##' |sort|uniq > /etc/mail/local-host-names &
wait

yes | cp -rf /.procmailrc /opt/otrs/.procmailrc &
wait
sed "s#TRUSTED_DOMAIN#$TRUSTED_DOMAIN#g" -i /opt/otrs/.procmailrc &
wait
sed "s#300px#3000px#g" -i /opt/otrs/var/httpd/htdocs/js/Core.Agent.js

for filename in /opt/otrs/var/httpd/htdocs/skins/Agent/default/css/*.css; do
  sed -i 's/f92/18898a/g' $filename
  sed -i 's/F92/18898b/g' $filename
  sed -i 's/FF9922/18898c/g' $filename
  sed -i 's/F72/0c0c0c/g' $filename
  sed -i 's/FCB24B/C0C0C0/g' $filename
  sed -i 's/F39C19/303030/g' $filename
done

rm -rf /opt/otrs/var/httpd/htdocs/skins/Agent/default/css-cache/*

supervisord -c /etc/supervisord.d/otrs.ini
