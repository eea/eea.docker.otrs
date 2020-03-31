FROM fedora:29
#fedora:28
#centos:7
#fedora:28

MAINTAINER michimau <mauro.michielon@eea.europa.eu>
#RUN yum install -y http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
#RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm 
#RUN yum install -y http://repo.openfusion.net/centos7-x86_64/openfusion-release-0.7-1.of.el7.noarch.rpm
#--allowerasing

#RUN yum install -y epel-release  
#RUN yum update -y 
RUN yum -y install cronie mysql sudo \ 
    perl-core "perl(Crypt::SSLeay)" "perl(Net::LDAP)" "perl(URI)" \ 
    procmail "perl(Date::Format)" "perl(LWP::UserAgent)" \ 
    "perl(Net::DNS)" "perl(IO::Socket::SSL)" "perl(XML::Parser)" \ 
    "perl(Apache2::Reload)" "perl(Crypt::Eksblowfish::Bcrypt)" \ 
    "perl(Encode::HanExtra)" "perl(GD)" "perl(GD::Text)" "perl(GD::Graph)" \ 
    "perl(JSON::XS)" "perl(Mail::IMAPClient)" "perl(PDF::API2)" \ 
    "perl(Text::CSV_XS)" "perl(YAML::XS)" "perl(Text::CSV_XS)" "perl(DBD::mysql)" \
    "perl(DBD::Pg)" "perl(XML::LibXML)" "perl(Template)" "perl(Template::Toolkit)" \
    "perl(FCGI)" "perl(Module::Refresh)" \
    "perl(XML::LibXSLT)" "perl(Archive::Zip)" \
    perl-DateTime-TimeZone supervisor tar which wget git sendmail sendmail-cf openssl-perl \
    perl-IO-Socket-SSL rsyslog nginx spawn-fcgi fcgiwrap redhat-lsb-core
    #meld
    

ENV OTRS_VERSION 6_0_27
#ENV SUB_OTRS_VERSION -01
ENV OTRS_ROOT /opt/otrs/

WORKDIR /opt
RUN wget https://github.com/OTRS/otrs/archive/rel-${OTRS_VERSION}.tar.gz && \
    tar xvf rel-${OTRS_VERSION}.tar.gz && \
    mv /opt/otrs-rel-${OTRS_VERSION} otrs
#RUN yum install -y http://ftp.otrs.org/pub/otrs/RPMS/rhel/7/otrs-${OTRS_VERSION}${SUB_OTRS_VERSION}.noarch.rpm

ADD config/Config.pm /Config.pm
#ADD config/ZZZAuto.pm /ZZZAuto.pm
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
#RUN sed -i -e '/<ValidateModule>Kernel::System::SysConfig::StateValidate<\/ValidateModule>/ s/^#*/#/' -i ${OTRS_ROOT}Kernel/Config/Files/Ticket.xml

RUN mkdir -p ${OTRS_ROOT}var/{run,tmp}/
#RUN yum install -y nginx spawn-fcgi fcgiwrap 
#redhat-lsb-core

#Add run script
ADD entrypoint.sh /
RUN chmod 755 /*.sh && \
    useradd -r -U -d /opt/otrs -c 'OTRS user' otrs -s /bin/bash && \
    usermod -G nginx otrs

#RUN yum -y install nginx spawn-fcgi fcgiwrap #redhat-lsb-core
ADD config/otrs_config_nginx.conf /
ADD config/fcgiwrap /fcgiwrap
RUN mkdir -p /var/run/fcgiwrap && \
    chown -R nginx /var/run/fcgiwrap
#RUN yum install -y meld
EXPOSE 80 443 25

CMD ["/entrypoint.sh"]
