#################################################
# To build hhvm on centos6.3                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

#11. Install libmemcached
cd $BUILD_HOME
tar -zvxf $BUILD_HOME/centos/dependsapp/libmemcached-0.49.tar.tar
cd libmemcached-0.49/
./configure --prefix=$CMAKE_PREFIX_PATH --with-memcached
make
make install
cd $BUILD_HOME

