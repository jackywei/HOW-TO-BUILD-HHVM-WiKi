#################################################
# To build hhvm on centos6.3                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################
cd $BUILD_HOME

#5. Install libevent
unzip $BUILD_HOME/centos/dependsapp/libevent-libevent-release-1.4.14b-stable-0-geb8122f.zip
cd libevent-libevent-deb8b9a/
cat ../hiphop-php/src/third_party/libevent-1.4.14.fb-changes.diff | patch -p1
./autogen.sh
./configure --prefix=$CMAKE_PREFIX_PATH
make
make install
cd $BUILD_HOME

