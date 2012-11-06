#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

#13. Install oniguruma
cd $BUILD_HOME
tar -zxf $BUILD_HOME/centos/dependsapp/onig-5.9.2.tar.gz
cd onig-5.9.2/
./configure --prefix=$CMAKE_PREFIX_PATH
make
make install
cd $BUILD_HOME
