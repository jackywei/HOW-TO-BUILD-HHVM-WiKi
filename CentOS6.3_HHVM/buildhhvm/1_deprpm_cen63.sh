#################################################
# To build hhvm on centos6.3                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

BUILD_HOME=/home/dev
#1. Install dependency rpm
cd $BUILD_HOME
mkdir /media/cdrom1
mkdir /media/cdrom2
mount -t iso9660 -o loop $BUILD_HOME/centos/centosimage/CentOS-6.3-x86_64-bin-DVD1.iso /media/cdrom1
mount -t iso9660 -o loop $BUILD_HOME/centos/centosimage/CentOS-6.3-x86_64-bin-DVD2.iso /media/cdrom2
cp /etc/yum.repos.d/CentOS-Media.repo /etc/yum.repos.d/CentOS-Media.repo.back
sed -e 's/cdrom/cdrom1/g' -e 's/CentOS\//cdrom2\//g' /etc/yum.repos.d/CentOS-Media.repo.back > /etc/yum.repos.d/CentOS-Media.repo
yum --disablerepo=\* --enablerepo=c6-media install git svn cpp make autoconf automake libtool patch memcached cmake wget boost-devel mysql-devel pcre-devel gd-devel libxml2-devel expat-devel libicu-devel bzip2-devel oniguruma-devel openldap-devel readline-devel libc-client-devel libcap-devel binutils-devel pam-devel elfutils-libelf-devel

