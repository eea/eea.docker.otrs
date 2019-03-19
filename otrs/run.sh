#!/bin/bash

mysqlcmd="mysql -uroot -hmariadb -p$MYSQL_ROOT_PASSWORD "

while true; do
  out="`$mysqlcmd -e "SELECT COUNT(*) FROM mysql.user;" 2>&1`"
  echo -e $out
  echo "$out" | grep "COUNT"
  if [ $? -eq 0 ]; then
    echo -e "\n\e[92mServer is up !\e[0m\n"
    break
  fi
  echo -e "\nDB server still isn't up, sleeping a little bit ...\n"
  sleep 2
done

#ADD config/Config.pm ${OTRS_ROOT}Kernel/Config.pm
#ADD config/ZZZAuto.pm ${OTRS_ROOT}Kernel/Config/Files/ZZZAuto.pm
#ADD config/GenericAgent.pm ${OTRS_ROOT}Kernel/Config/GenericAgent.pm
#ADD config/OutOfOffice.xml ${OTRS_ROOT}Kernel/Config/Files/OutOfOffice.xml
#ADD config/FollowUp.pm ${OTRS_ROOT}Kernel/System/PostMaster/FollowUp.pm
#ADD config/Core.Agent.js ${OTRS_ROOT}var/httpd/htdocs/js/Core.Agent.js

cp /config/Config.pm ${OTRS_ROOT}Kernel/Config.pm
cp /config/ZZZAuto.pm /config/GenericAgent.pm ${OTRS_ROOT}Kernel/Config/Files/ 
cp /config/OutOfOffice.xml ${OTRS_ROOT}Kernel/Config/Files/
cp /config/FollowUp.pm ${OTRS_ROOT}Kernel/System/PostMaster/FollowUp.pm

touch /var/log/otrs.log && chown otrs /var/log/otrs.log

sed "s#otrs_db_password#$OTRS_DB_PASSWORD#g" -i ${OTRS_ROOT}Kernel/Config.pm
sed "s#ldap_password#$LDAP_PASSWORD#g" -i ${OTRS_ROOT}Kernel/Config.pm
sed "s#ldap_host#$LDAP_HOST#g" -i ${OTRS_ROOT}Kernel/Config.pm
sed "s#ldap_host#$LDAP_HOST#g" -i ${OTRS_ROOT}Kernel/Config/Files/ZZZAuto.pm
sed "s#mtp_relay#$MTP_RELAY#g" -i ${OTRS_ROOT}Kernel/Config/Files/ZZZAuto.pm

sed "s#host_ip_address#$SERVER_NAME#g" -i /etc/httpd/conf.d/zzz_otrs.conf

sed "s#User apache#User otrs#g" -i /etc/httpd/conf/httpd.conf
#sed "s#host_ip_address#$SERVER_NAME#g" -i /etc/httpd/conf.d/zzz_otrs.conf

# Redundant creation of database: Use MYSQL_USER, MYSQL_PASSWORD and MYSQL_DATABASE
$mysqlcmd -e 'use otrs'
if [ $? -ne 0  ]; then

  sed "s#some-pass#$OTRS_DB_PASSWORD#g" -i ${OTRS_ROOT}Kernel/Config.pm
  sed "s#127.0.0.1#mariadb#g" -i ${OTRS_ROOT}Kernel/Config.pm
  #su -c "${OTRS_ROOT}bin/otrs.Console.pl Maint::Database::PasswordCrypt $OTRS_DB_PASSWORD" -s /bin/bash otrs &
  
  $mysqlcmd -e "CREATE DATABASE IF NOT EXISTS otrs;"
  $mysqlcmd -e " GRANT ALL ON otrs.* to 'otrs'@'%' identified by '$OTRS_DB_PASSWORD'";

  $mysqlcmd otrs < ${OTRS_ROOT}scripts/database/otrs-schema.mysql.sql
  $mysqlcmd otrs < ${OTRS_ROOT}scripts/database/otrs-initial_insert.mysql.sql

fi


#echo -e "Setting password for default admin account root@localhost..."
su -c "${OTRS_ROOT}bin/otrs.Console.pl Admin::User::SetPassword root@localhost ${OTRS_ROOT_PASSWORD}" -s /bin/bash otrs &
wait
su -c "${OTRS_ROOT}bin/otrs.Console.pl Maint::Config::Rebuild" -s /bin/bash otrs &

${OTRS_ROOT}bin/Cron.sh start otrs &
wait

if su -c "${OTRS_ROOT}bin/otrs.Console.pl Admin::Package::List" -s /bin/bash otrs | grep Znuny4OTRS-Repo | wc -l | grep -q '1'; then
   su -c "${OTRS_ROOT}bin/otrs.Console.pl Admin::Package::ReinstallAll" -s /bin/bash otrs &
   wait
else
  chown -R otrs /addons ${OTRS_ROOT}
  su -c "${OTRS_ROOT}bin/otrs.Console.pl Admin::Package::List" -s /bin/bash otrs &
  wait
  su -c "${OTRS_ROOT}bin/otrs.Console.pl Admin::Package::Install /addons/Znuny4OTRS-Repo.opm" -s /bin/bash otrs &
  wait
  su -c "${OTRS_ROOT}bin/otrs.Console.pl Admin::Package::Install /addons/FAQ-5.0.19.opm" -s /bin/bash otrs &
  wait
  cp -R addons/Znuny4OTRS-MarkTicketSeenUnseen/* ${OTRS_ROOT}
  cp -R addons/Znuny4OTRS-SortByLastContact/* ${OTRS_ROOT}

  su -c "${OTRS_ROOT}bin/otrs.Console.pl Dev::Package::Build ${OTRS_ROOT}Znuny4OTRS-MarkTicketSeenUnseen.sopm /addons" -s /bin/bash otrs &
  wait
  su -c "${OTRS_ROOT}bin/otrs.Console.pl Dev::Package::Build ${OTRS_ROOT}Znuny4OTRS-SortByLastContact.sopm /addons" -s /bin/bash otrs &
  wait
  su -c "${OTRS_ROOT}bin/otrs.Console.pl Admin::Package::Install /addons/Znuny4OTRS-MarkTicketSeenUnseen-5.0.1.opm" -s /bin/bash otrs &
  wait
  su -c "${OTRS_ROOT}bin/otrs.Console.pl Admin::Package::Install /addons/Znuny4OTRS-SortByLastContact-5.0.2.opm" -s /bin/bash otrs &
  wait
fi 

#OTRS4
#${OTRS_ROOT}bin/znuny.UpdateLastCustomerContact.pl
#OTRS5
#${OTRS_ROOT}bin/otrs.Console.pl Znuny::SortByLastContact

#${OTRS_ROOT}bin/Cron.sh start otrs
#${OTRS_ROOT}bin/otrs.Scheduler.pl -w 1
#${OTRS_ROOT}bin/otrs.RebuildConfig.pl
#${OTRS_ROOT}bin/otrs.DeleteCache.pl
#${OTRS_ROOT}bin/otrs.RebuildTicketIndex.pl

${OTRS_ROOT}bin/otrs.SetPermissions.pl --otrs-user=otrs --web-group=apache /opt/otrs

#SSL
#echo "$SSL_CERT" > /etc/pki/tls/certs/star-eionet2012.crt
#echo "$SSL_KEY" > /etc/pki/tls/private/star-eionet2012.key
#echo "$AUTH_CERT" > /etc/pki/tls/certs/rapidssl_ca.crt

cat /ssl/server.crt > /etc/pki/tls/certs/star-eionet2012.crt
cat /ssl/server.key > /etc/pki/tls/private/star-eionet2012.key
cat /ssl/server-chain.crt > /etc/pki/tls/certs/rapidssl_ca.crt

chmod 400 /etc/pki/tls/certs/*
chmod 400 /etc/pki/tls/private/*

touch /var/log/otrs.log
chown otrs /var/log/otrs.log
chgrp apache /var/log/otrs.log

#
# Configure email
#
if [ -z "$MAIL_ADDRESSES" ]; then
   MAIL_ADDRESSES="@$(hostname)"
fi
> /etc/mail/virtusertable
for address in $MAIL_ADDRESSES
do
    echo "$address  otrs" >> /etc/mail/virtusertable
done
( cd /etc/mail ; make )
sed -e 's#  *#\n#g'  <<< "$MAIL_ADDRESSES" | sed -e 's#.*@##' |sort|uniq > /etc/mail/local-host-names

#echo -e "Starting supervisord..."
supervisord -c /etc/supervisord.conf
