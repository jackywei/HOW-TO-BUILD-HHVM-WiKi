#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

#13. Install cclient
cd $BUILD_HOME
rpm -ivh $BUILD_HOME/centos/dependsapp/libc-client2007-2007e-8.el5.x86_64.rpm
tar -zxvf $BUILD_HOME/centos/dependsapp/libcclient2007-devel.tar.gz
cp /usr/lib64/libc-client.so.2007 $CMAKE_PREFIX_PATH/lib/libc-client.so
cp -r imap $CMAKE_PREFIX_PATH/include/.
cd $BUILD_HOME
