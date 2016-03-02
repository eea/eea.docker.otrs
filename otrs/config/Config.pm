# --
# Kernel/Config.pm - Config file for OTRS kernel
# Copyright (C) 2001-2013 OTRS AG, http://otrs.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --
#  Note:
#
#  -->> Most OTRS configuration should be done via the OTRS web interface
#       and the SysConfig. Only for some configuration, such as database
#       credentials and customer data source changes, you should edit this
#       file. For changes do customer data sources you can copy the definitions
#       from Kernel/Config/Defaults.pm and paste them in this file.
#       Config.pm will not be overwritten when updating OTRS.
# --

package Kernel::Config;

use strict;
use warnings;
use utf8;

sub Load {
    my $Self = shift;

    # ---------------------------------------------------- #
    # database settings                                    #
    # ---------------------------------------------------- #

    # The database host
    $Self->{'DatabaseHost'} = 'mariadb';

    # The database name
    $Self->{'Database'} = 'otrs';

    # The database user
    $Self->{'DatabaseUser'} = 'otrs';

    # The password of database user. You also can use bin/otrs.CryptPassword.pl
    # for crypted passwords
    $Self->{'DatabasePw'} = 'otrs_db_password';

    # The database DSN for MySQL ==> more: "perldoc DBD::mysql" 
    $Self->{DatabaseDSN} = "DBI:mysql:database=$Self->{Database};host=$Self->{DatabaseHost};";

    # ---------------------------------------------------- #
    # fs root directory
    # ---------------------------------------------------- #
    $Self->{Home} = '/opt/otrs';
    $Self->{ArticleDir} = '/opt/otrs/var/article';
    # ---------------------------------------------------- #
    # insert your own config settings "here"               #
    # config settings taken from Kernel/Config/Defaults.pm #
    # ---------------------------------------------------- #
    # $Self->{SessionUseCookie} = 0;
    # $Self->{CheckMXRecord} = 0;

    $Self->{'AuthModule1'} = 'Kernel::System::Auth::LDAP';
    $Self->{'AuthModule::LDAP::Host1'} = 'ldap_host';
    $Self->{'AuthModule::LDAP::BaseDN1'} = 'ou=Users,o=Eionet,l=Europe';
    $Self->{'AuthModule::LDAP::UID1'} = 'uid';
    $Self->{'AuthModule::LDAP::AlwaysFilter1'} = '';
    $Self->{'AuthModule::LDAP::SearchUserDN'} = 'cn=Accounts browser,o=EIONET,l=Europe';
    $Self->{'AuthModule::LDAP::SearchUserPw'} = 'ldap_password';
    $Self->{'AuthModule::LDAP::Params1'} = {
        port => 389,
        timeout => 120,
        async => 0,
        version => 3,
    };

    # agent data sync against ldap
    $Self->{'AuthSyncModule'} = 'Kernel::System::Auth::Sync::LDAP';
    $Self->{'AuthSyncModule::LDAP::Host'} = 'ldap://ldap_host';
    $Self->{'AuthSyncModule::LDAP::BaseDN'} = 'ou=Users,o=Eionet,l=Europe';
    $Self->{'AuthSyncModule::LDAP::UID'} = 'uid';
    $Self->{'AuthSyncModule::LDAP::SearchUserDN'} = 'cn=Accounts browser,o=EIONET,l=Europe';
    $Self->{'AuthSyncModule::LDAP::SearchUserPw'} = 'ldap_password';
    $Self->{'AuthSyncModule::LDAP::UserSyncMap'} = {
        # DB -> LDAP
        UserFirstname => 'givenName',
        UserLastname  => 'sn',
        UserEmail     => 'mail',
        UserPhone     => 'telephonenumber',
    };

## 1. Customer user backend: DB
## (customer database backend and settings)
#$Self->{CustomerUser1} = {
#    Name => 'Customer Database',
#    Module => 'Kernel::System::CustomerUser::DB',
#    Params => {
#        # if you want to use an external database, add the
#        # required settings
##        DSN => 'DBI:odbc:yourdsn',
##        Type => 'mssql', # only for ODBC connections
#        DSN => 'DBI:mysql:database=otrs;host=mariadb',
#        User => 'otrs',
#        Password => 'otrs_db_password',
#        Table => 'customer_user',
#    },
#    # customer unique id
#    CustomerKey => 'login',
#    # customer #
#    CustomerID => 'customer_id',
#    CustomerValid => 'valid_id',
#    CustomerUserListFields => ['first_name', 'last_name', 'email'],
#    CustomerUserSearchFields => ['login', 'last_name', 'customer_id'],
#    CustomerUserSearchPrefix => '',
#    CustomerUserSearchSuffix => '*',
#    CustomerUserSearchListLimit => 250,
#    CustomerUserPostMasterSearchFields => ['email'],
#        CustomerUserNameFields => ['title','first_name','last_name'],
#    CustomerUserEmailUniqCheck => 1,
##    # show not own tickets in customer panel, CompanyTickets
##    CustomerUserExcludePrimaryCustomerID => 0,
##    # generate auto logins
##    AutoLoginCreation => 0,
##    AutoLoginCreationPrefix => 'auto',
##    # admin can change customer preferences
##    AdminSetPreferences => 1,
##    # cache time to live in sec. - cache any database queries
##    CacheTTL => 0,
##    # just a read only source
##    ReadOnly => 1,
#
##     Map => [
##         # note: Login, Email and CustomerID needed!
##         # var, frontend, storage, shown, required, storage-type
##         [ 'UserSalutation', 'Title', 'title', 1, 0, 'var' ],
##         [ 'UserFirstname', 'Firstname', 'givenname', 1, 1, 'var' ],
##         [ 'UserLastname', 'Lastname', 'sn', 1, 1, 'var' ],
##         [ 'UserLogin', 'Login', 'uid', 1, 1, 'var' ],
##         [ 'UserEmail', 'Email', 'mail', 1, 1, 'var' ],
##         [ 'UserCustomerID', 'CustomerID', 'mail', 0, 1, 'var' ],
##         [ 'UserPhone', 'Phone', 'telephonenumber', 1, 0, 'var' ],
##     ],
#
#     Map => [
#        # note: Login, Email and CustomerID needed!
#        # var, frontend, storage, shown (1=always,2=lite), required, storage-type, http-link, readonly, http-link-target
#        [ 'UserTitle',      'Title',      'title',        1, 0, 'var', '', 0 ],
#        [ 'UserFirstname',  'Firstname',  'first_name',   1, 1, 'var', '', 0 ],
#        [ 'UserLastname',   'Lastname',   'last_name',    1, 1, 'var', '', 0 ],
#        [ 'UserLogin',      'Username',   'login',        1, 1, 'var', '', 0 ],
#        [ 'UserPassword',   'Password',   'pw',           0, 0, 'var', '', 0 ],
#        [ 'UserEmail',      'Email',      'email',        1, 1, 'var', '', 0 ],
#        [ 'UserCustomerID', 'CustomerID', 'customer_id',  0, 1, 'var', '', 0 ],
#        [ 'UserPhone',      'Phone',      'phone',        1, 0, 'var', '', 0 ],
#        [ 'UserFax',        'Fax',        'fax',          1, 0, 'var', '', 0 ],
#        [ 'UserMobile',     'Mobile',     'mobile',       1, 0, 'var', '', 0 ],
#        [ 'UserStreet',     'Street',     'street',       1, 0, 'var', '', 0 ],
#        [ 'UserZip',        'Zip',        'zip',          1, 0, 'var', '', 0 ],
#        [ 'UserCity',       'City',       'city',         1, 0, 'var', '', 0 ],
#        [ 'UserCountry',    'Country',    'country',      1, 0, 'var', '', 0 ],
#        [ 'UserComment',    'Comment',    'comments',     1, 0, 'var', '', 0 ],
#        [ 'ValidID',        'Valid',      'valid_id',     0, 1, 'int', '', 0 ],
#    ],
#    # default selections
##    Selections => {
##        UserTitle => {
##            'Mr.' => 'Mr.',
##            'Mrs.' => 'Mrs.',
##        },
##    },
#};

# 2. Customer user backend: LDAP
# (customer ldap backend and settings)
$Self->{CustomerUser2} = {
    Name => 'LDAP Datasource',
    Module => 'Kernel::System::CustomerUser::LDAP',
    Params => {
        Host => 'ldap_host',
        BaseDN => 'ou=Users,o=Eionet,l=Europe',

        # search scope (one|sub)
        SSCOPE => 'one',
        SourceCharset => 'utf-8',
        DestCharset   => 'utf-8',

        UserDN => 'cn=Accounts browser,o=EIONET,l=Europe',
        UserPw => 'ldap_password',
        # in case you want to add always one filter to each ldap query, use
        # this option. e. g. AlwaysFilter => '(mail=*)' or AlwaysFilter => '(objectclass=user)'
        #AlwaysFilter => '',
        # if the charset of your ldap server is iso-8859-1, use this:

        # Net::LDAP new params (if needed - for more info see perldoc Net::LDAP)
        Params => {
            port => 389,
            timeout => 120,
            async => 0,
            version => 3,
        },
    },
    # customer unique id
    CustomerKey => 'uid',
    # customer #
    CustomerID => 'mail',
    CustomerUserListFields => ['uid', 'cn', 'mail'],
    CustomerUserSearchFields => ['uid', 'cn', 'mail'],
    CustomerUserSearchPrefix => '',
    CustomerUserSearchSuffix => '*',
    CustomerUserSearchListLimit => 250,
    CustomerUserPostMasterSearchFields => ['mail'],
    CustomerUserNameFields => ['givenname', 'sn'],
    Map => [
         # note: Login, Email and CustomerID needed!
         # var, frontend, storage, shown, required, storage-type
         [ 'UserSalutation', 'Title', 'title', 1, 0, 'var' ],
         [ 'UserFirstname', 'Firstname', 'givenname', 1, 1, 'var' ],
         [ 'UserLastname', 'Lastname', 'sn', 1, 1, 'var' ],
         [ 'UserLogin', 'Login', 'uid', 1, 1, 'var' ],
         [ 'UserEmail', 'Email', 'mail', 1, 1, 'var' ],
         [ 'UserCustomerID', 'CustomerID', 'mail', 0, 1, 'var' ],
         [ 'UserPhone', 'Phone', 'telephonenumber', 1, 0, 'var' ],
     ],
 };

    # ---------------------------------------------------- #

    # ---------------------------------------------------- #
    # data inserted by installer                           #
    # ---------------------------------------------------- #
    # $DIBI$

    # ---------------------------------------------------- #
    # ---------------------------------------------------- #
    #                                                      #
    # end of your own config options!!!                    #
    #                                                      #
    # ---------------------------------------------------- #
    # ---------------------------------------------------- #
}

# ---------------------------------------------------- #
# needed system stuff (don't edit this)                #
# ---------------------------------------------------- #
use strict;
use warnings;

use vars qw(@ISA);

use Kernel::Config::Defaults;
push (@ISA, 'Kernel::Config::Defaults');

# -----------------------------------------------------#

1;
