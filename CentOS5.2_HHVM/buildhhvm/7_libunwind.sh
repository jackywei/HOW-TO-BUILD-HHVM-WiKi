#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

#7. Install libunwind
cd $BUILD_HOME
tar zxf $BUILD_HOME/centos/dependsapp/libunwind-1.0.tar.gz
cd libunwind-1.0/
autoreconf -i -f
./configure --prefix=$CMAKE_PREFIX_PATH
make
make install
cd $BUILD_HOME
