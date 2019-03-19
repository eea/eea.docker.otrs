#FROM centos:7
FROM fedora:22

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

ENV OTRS_VERSION 5.0.34
ENV SUB_OTRS_VERSION -01
ENV OTRS_ROOT /opt/otrs/

RUN dnf update -y && \
    dnf -y install httpd-devel \
    mysql \
    mod_ssl \ 
    "perl(GD::Graph)" \
    "perl(PDF::API2)" \
    "perl(Text::CSV_XS)" \
    "perl(GD)" \
    "perl(GD::Text)" \ 
    "perl(DBD::mysql)" \
    supervisor \
    tar \
    which \
    wget \
    git \
    sendmail \
    sendmail-cf \
    openssl-perl \
    rsyslog \
    http://ftp.otrs.org/pub/otrs/RPMS/fedora/22/otrs-${OTRS_VERSION}${SUB_OTRS_VERSION}.noarch.rpm

ADD addons/*  /addons/

#Add configuration file
#ADD config/Config.pm ${OTRS_ROOT}Kernel/Config.pm
#ADD config/ZZZAuto.pm ${OTRS_ROOT}Kernel/Config/Files/ZZZAuto.pm
#ADD config/GenericAgent.pm ${OTRS_ROOT}Kernel/Config/GenericAgent.pm
#ADD config/OutOfOffice.xml ${OTRS_ROOT}Kernel/Config/Files/OutOfOffice.xml
#ADD config/FollowUp.pm ${OTRS_ROOT}Kernel/System/PostMaster/FollowUp.pm
#ADD config/Core.Agent.js ${OTRS_ROOT}var/httpd/htdocs/js/Core.Agent.js

ADD config/Config.pm config/ZZZAuto.pm config/GenericAgent.pm config/OutOfOffice.xml config/FollowUp.pm config/Core.Agent.js /config/


ADD config/eea-uk-white.png /opt/otrs/var/httpd/htdocs/skins/Agent/default/img/logo_bg.png

RUN cd /etc/mail && \
    rm -f virtusertable.db && \
    make && \
    cd - 

ADD config/local-host-names config/sendmail.mc config/virtusertable /etc/mail/

#httpd configuration file SSL
ADD config/zzz_otrs.conf config/mod_headers.conf config/ssl.conf /etc/httpd/conf.d/

RUN echo "LoadModule http2_module modules/mod_http2.so" >> /etc/httpd/conf.modules.d/00-base.conf

#Add change email fetch time script
#COPY otrs_postmaster_time.sh ${OTRS_ROOT}scripts/
#RUN chmod 755 ${OTRS_ROOT}scripts/*.sh

#Enable mod_filter
RUN sed -i '/filter_module/s/#//g' /etc/httpd/conf/httpd.conf

#reconfigure httpd
RUN sed -i "s/error\/noindex.html/otrs\/index.pl/" /etc/httpd/conf.d/welcome.conf

#Fix pam permissions for crond
RUN echo "+ : otrs : cron crond" |cat >> /etc/security/access.conf
RUN sed -i -e '/pam_loginuid.so/ s/^#*/#/' /etc/pam.d/crond

#Configure supervisord
RUN sed -i -e "s/^nodaemon=false/nodaemon=true/" /etc/supervisord.conf
ADD etc/supervisord.d/otrs.ini /etc/supervisord.d/
#RUN cat /etc/supervisord.d/otrs.ini >> etc/supervisord.conf

#Fix PostmasterFollowUpState config var, this line on Ticket.xml disallow the edition
#of that field through SysConfig
#RUN sed -i -e '/<ValidateModule>Kernel::System::SysConfig::StateValidate<\/ValidateModule>/ s/^#*/#/' -i ${OTRS_ROOT}Kernel/Config/Files/Ticket.xml
#
RUN mkdir -p ${OTRS_ROOT}var/{run,tmp}/

RUN usermod -G apache otrs
RUN chown -R otrs /var/log/supervisor
EXPOSE 80 443 25 8443 8000

ADD run.sh /
RUN chmod 755 /*.sh

ADD config/eea-uk-white.png /opt/otrs/var/httpd/htdocs/skins/Agent/default/img/logo_bg.png

CMD ["/run.sh"]
