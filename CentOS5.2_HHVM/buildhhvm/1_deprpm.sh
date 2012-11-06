#################################################
# To build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

BUILD_HOME=/home/dev
#1. Install dependency rpm
cd $BUILD_HOME
mkdir /media/cdrom
mount -t iso9660 -o loop $BUILD_HOME/centos/centosimage/CentOS-5.8-x86_64-bin-DVD-1of2.iso /media/cdrom
yum --disablerepo=\* --enablerepo=c5-media install git svn cpp make autoconf automake libtool patch memcached cmake wget boost-devel mysql-devel pcre-devel gd-devel libxml2-devel expat-devel libicu-devel bzip2-devel oniguruma-devel openldap-devel readline-devel libc-client-devel libcap-devel binutils-devel pam-devel elfutils-libelf-devel


