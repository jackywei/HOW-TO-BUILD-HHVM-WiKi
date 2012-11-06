#################################################
# To build hhvm on centos6.3                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################


#4. Install libmcrypt
cd $BUILD_HOME/centos/dependsapp/
rpm -ivh libmcrypt-2.5.8-9.el6.x86_64.rpm
rpm -ivh libmcrypt-devel-2.5.8-9.el6.x86_64.rpm
cd $BUILD_HOME

