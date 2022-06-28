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
    $Self->{ArticleDir} = '/article';
    # ---------------------------------------------------- #
    # insert your own config settings "here"               #
    # config settings taken from Kernel/Config/Defaults.pm #
    # ---------------------------------------------------- #
    # $Self->{SessionUseCookie} = 0;
    # $Self->{CheckMXRecord} = 0;
    $Self->{AuthModule} = 'Kernel::System::Auth::HTTPBasicAuth';

    # 2. Customer user backend: LDAP
    # (customer ldap backend and settings)
    $Self->{CustomerUser2} = {
        Name => 'LDAP Datasource',
        Module => 'Kernel::System::CustomerUser::LDAP',
        Params => {
            Host => 'ldaps://ldap_host',
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
              verify => 'none',
              port => 636,
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
