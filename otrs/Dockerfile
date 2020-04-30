FROM fedora:29

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

RUN yum -y install cronie httpd httpd-devel mysql mod_perl sudo \ 
    perl-core "perl(Crypt::SSLeay)" "perl(Net::LDAP)" "perl(URI)" \ 
    procmail "perl(Date::Format)" "perl(LWP::UserAgent)" \ 
    "perl(Net::DNS)" "perl(IO::Socket::SSL)" "perl(XML::Parser)" \ 
    "perl(Apache2::Reload)" "perl(Crypt::Eksblowfish::Bcrypt)" \ 
    "perl(Encode::HanExtra)" "perl(GD)" "perl(GD::Text)" "perl(GD::Graph)" \ 
    "perl(JSON::XS)" "perl(Mail::IMAPClient)" "perl(PDF::API2)" \ 
    "perl(Text::CSV_XS)" "perl(YAML::XS)" "perl(Text::CSV_XS)" "perl(DBD::mysql)" \
    "perl(DBD::Pg)" "perl(XML::LibXML)" "perl(Template::Toolkit)" perl-DateTime-TimeZone \
    supervisor tar which wget git sendmail sendmail-cf openssl-perl perl-IO-Socket-SSL rsyslog

ENV OTRS_VERSION 6_0_28
#ENV SUB_OTRS_VERSION -01
ENV OTRS_ROOT /opt/otrs/

WORKDIR /opt
RUN wget https://github.com/OTRS/otrs/archive/rel-${OTRS_VERSION}.tar.gz && \
    tar xvf rel-${OTRS_VERSION}.tar.gz && \
    mv /opt/otrs-rel-${OTRS_VERSION} otrs

ADD config/logo_agent.png /opt/otrs/var/httpd/htdocs/skins/Agent/default/img/
ADD config/logo_customer.png /opt/otrs/var/httpd/htdocs/skins/Customer/default/img/

RUN cd /etc/mail && \
    rm -f virtusertable.db && \
    make && \
    cd - 

ADD config/sendmail.mc /etc/mail/sendmail.mc
ADD config/.procmailrc config/Config.pm entrypoint.sh /
ADD config/*.conf /etc/httpd/conf.d/
ADD etc/supervisord.d/*.ini /etc/supervisord.d/

RUN sed -i '/filter_module/s/#//g' /etc/httpd/conf/httpd.conf && \
    sed -i "s/error\/noindex.html/otrs\/index.pl/" /etc/httpd/conf.d/welcome.conf

#Fix pam permissions for crond
RUN echo "+ : otrs : cron crond" |cat >> /etc/security/access.conf && \
    sed -i -e '/pam_loginuid.so/ s/^#*/#/' /etc/pam.d/crond && \
    sed -i -e "s/^nodaemon=false/nodaemon=true/" /etc/supervisord.conf

#Fix PostmasterFollowUpState config var, this line on Ticket.xml disallow the edition of that field through SysConfig
#RUN sed -i -e '/<ValidateModule>Kernel::System::SysConfig::StateValidate<\/ValidateModule>/ s/^#*/#/' -i ${OTRS_ROOT}Kernel/Config/Files/Ticket.xml

RUN mkdir -p ${OTRS_ROOT}var/{run,tmp}/

RUN chmod 755 /*.sh && \
    useradd -r -U -d /opt/otrs -c 'OTRS user' otrs -s /bin/bash && \
    usermod -G apache otrs

EXPOSE 80 443 25

CMD ["/entrypoint.sh"]
