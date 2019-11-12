#FROM centos:7
FROM fedora:22

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

ENV OTRS_VERSION 5.0.38
ENV SUB_OTRS_VERSION -01
ENV OTRS_ROOT /opt/otrs/

RUN dnf update -y && \
    dnf -y install httpd-devel \
    sudo \
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

ADD config/Config.pm /Config.pm
ADD config/logo_agent.png /opt/otrs/var/httpd/htdocs/skins/Agent/default/img/
ADD config/logo_customer.png /opt/otrs/var/httpd/htdocs/skins/Customer/default/img/

RUN cd /etc/mail && \
    rm -f virtusertable.db && \
    make && \
    cd - 

ADD config/sendmail.mc /etc/mail/sendmail.mc
ADD config/.procmailrc /.procmailrc
ADD config/*.conf /etc/httpd/conf.d/
ADD etc/supervisord.d/otrs.ini /etc/supervisord.d/

RUN echo "LoadModule http2_module modules/mod_http2.so" >> /etc/httpd/conf.modules.d/00-base.conf && \
    #chmod 755 ${OTRS_ROOT}scripts/*.sh && \
    sed -i '/filter_module/s/#//g' /etc/httpd/conf/httpd.conf && \
    sed -i "s/error\/noindex.html/otrs\/index.pl/" /etc/httpd/conf.d/welcome.conf

#Fix pam permissions for crond
RUN echo "+ : otrs : cron crond" |cat >> /etc/security/access.conf && \
    sed -i -e '/pam_loginuid.so/ s/^#*/#/' /etc/pam.d/crond && \
    sed -i -e "s/^nodaemon=false/nodaemon=true/" /etc/supervisord.conf

#Fix PostmasterFollowUpState config var, this line on Ticket.xml disallow the edition of that field through SysConfig
RUN sed -i -e '/<ValidateModule>Kernel::System::SysConfig::StateValidate<\/ValidateModule>/ s/^#*/#/' -i ${OTRS_ROOT}Kernel/Config/Files/Ticket.xml

RUN mkdir -p ${OTRS_ROOT}var/{run,tmp}/

#Add run script
ADD entrypoint.sh /
RUN chmod 755 /*.sh && \
    usermod -G apache otrs

EXPOSE 80 443 25

CMD ["/entrypoint.sh"]
