#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

#6. Install libCurl
cd $BUILD_HOME
unzip $BUILD_HOME/centos/dependsapp/bagder-curl-curl-7_27_0-67-ga90492a.zip
cd bagder-curl-a90492a/
cat ../hiphop-php/src/third_party/libcurl-7.22.1.fb-changes.diff | patch -p1
./buildconf
./configure --prefix=$CMAKE_PREFIX_PATH
make
make install
cd $BUILD_HOME
