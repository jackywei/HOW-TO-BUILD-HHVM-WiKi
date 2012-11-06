#################################################
# To build hhvm on centos6.3                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################


#14. Install boost
cd $BUILD_HOME
tar -zxvf $BUILD_HOME/centos/dependsapp/boost_1_50_0.tar.gz
cd boost_1_50_0/
./bootstrap.sh --prefix=$CMAKE_PREFIX_PATH --libdir=$CMAKE_PREFIX_PATH/lib
./bjam --layout=system install
export Boost_LIBRARYDIR=$CMAKE_PREFIX_PATH/include/boost/
cd $BUILD_HOME


