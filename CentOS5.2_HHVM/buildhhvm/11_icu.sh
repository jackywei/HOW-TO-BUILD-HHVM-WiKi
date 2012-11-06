#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

#12. Install icu
cd $BUILD_HOME
tar -zxvf $BUILD_HOME/centos/dependsapp/icu4c-4_8_1_1-src.tgz
cd icu/source
./configure --prefix=$CMAKE_PREFIX_PATH
make
make install
cd $BUILD_HOME
