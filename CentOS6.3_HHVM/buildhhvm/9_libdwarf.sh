#################################################
# To build hhvm on centos6.3                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

#9. Install libdwarf
cd $BUILD_HOME
tar -zxf $BUILD_HOME/centos/dependsapp/libdwarf-20120410.tar.gz
cd dwarf-20120410/libdwarf
./configure
make
cp libdwarf.a $CMAKE_PREFIX_PATH/lib/
cp libdwarf.h $CMAKE_PREFIX_PATH/include/
cp dwarf.h $CMAKE_PREFIX_PATH/include/
cd $BUILD_HOME

