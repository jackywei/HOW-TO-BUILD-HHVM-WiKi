#################################################
# To build hhvm on centos6.3                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################
cd $BUILD_HOME

#5. Install google_glog
tar -zxf $BUILD_HOME/centos/dependsapp/glog-0.3.2.tar.gz
cd glog-0.3.2/
./configure --prefix=$CMAKE_PREFIX_PATH
make
make install
cd $BUILD_HOME

