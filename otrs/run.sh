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

sed "s#otrs_db_password#$OTRS_DB_PASSWORD#g" -i ${OTRS_ROOT}Kernel/Config.pm
sed "s#ldap_password#$LDAP_PASSWORD#g" -i ${OTRS_ROOT}Kernel/Config.pm
sed "s#ldap_host#$LDAP_HOST#g" -i ${OTRS_ROOT}Kernel/Config.pm
sed "s#ldap_host#$LDAP_HOST#g" -i ${OTRS_ROOT}Kernel/Config/Files/ZZZAuto.pm
sed "s#mtp_relay#$MTP_RELAY#g" -i ${OTRS_ROOT}Kernel/Config/Files/ZZZAuto.pm

sed "s#host_ip_address#$SERVER_NAME#g" -i /etc/httpd/conf.d/zzz_otrs.conf

sed "s#User apache#User otrs#g" -i /etc/httpd/conf/httpd.conf

# Redundant creation of database: Use MYSQL_USER, MYSQL_PASSWORD and MYSQL_DATABASE
$mysqlcmd -e 'use otrs'
if [ $? -ne 0  ]; then

  $mysqlcmd -e "CREATE DATABASE IF NOT EXISTS otrs;"
  $mysqlcmd -e " GRANT ALL ON otrs.* to 'otrs'@'%' identified by '$OTRS_DB_PASSWORD'";

  $mysqlcmd otrs < ${OTRS_ROOT}scripts/database/otrs-schema.mysql.sql
  $mysqlcmd otrs < ${OTRS_ROOT}scripts/database/otrs-initial_insert.mysql.sql
fi

echo -e "Setting password for default admin account root@localhost..."
${OTRS_ROOT}bin/otrs.SetPassword.pl --agent root@localhost $OTRS_ROOT_PASSWORD

${OTRS_ROOT}bin/otrs.PackageManager.pl -a install -p Znuny4OTRS-Repo-2.0.25.opm
${OTRS_ROOT}bin/otrs.PackageManager.pl -a install -p Znuny4OTRS-MarkTicketSeenUnseen-1.1.0.opm
${OTRS_ROOT}bin/otrs.PackageManager.pl -a install -p Znuny4OTRS-SortByLastContact-3.2.1.opm
${OTRS_ROOT}bin/otrs.PackageManager.pl -a install -p FAQ-4.0.91.opm

#OTRS4
${OTRS_ROOT}bin/znuny.UpdateLastCustomerContact.pl
#OTRS5
#${OTRS_ROOT}bin/otrs.Console.pl Znuny::SortByLastContact

${OTRS_ROOT}bin/Cron.sh start otrs
${OTRS_ROOT}bin/otrs.Scheduler.pl -w 1
${OTRS_ROOT}bin/otrs.RebuildConfig.pl
${OTRS_ROOT}bin/otrs.DeleteCache.pl
${OTRS_ROOT}bin/otrs.RebuildTicketIndex.pl

git clone -b otrs4 https://github.com/eea/eionet.otrs.theme.git
chmod 755 /eionet.otrs.theme/install.sh
cd eionet.otrs.theme && ./install.sh

for Pkg in $(${OTRS_ROOT}bin/otrs.PackageManager.pl -a list | grep -e '^| Name:' | awk '{print $3}'); do 
	${OTRS_ROOT}bin/otrs.PackageManager.pl -a reinstall -p ${Pkg}; 
done

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

# Launch supervisord
echo -e "Starting supervisord..."
supervisord
