#################################################
# To build hhvm on centos6.3                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

#8. Install tbb

cd $BUILD_HOME
tar -zxf $BUILD_HOME/centos/dependsapp/tbb40_20120613oss_src.tgz
cd tbb40_20120613oss/

make > make.log
awk 'END {print}' make.log |sed -e 's/`/ /' -e "s/'//" |awk {'print $4'} > tmpname
TBB_NAME=`cat tmpname`
echo =========================================================================
echo TBB_LIBPATH=$TBB_NAME
echo =========================================================================
rm -f tmpname

mkdir -p /usr/include/serial
cp -a include/serial/* /usr/include/serial/
mkdir -p /usr/include/tbb
cp -a include/tbb/* /usr/include/tbb/
cp $TBB_NAME/libtbb.so.2 /usr/lib64/
ln -s -f /usr/lib64/libtbb.so.2 /usr/lib64/libtbb.so
cd $BUILD_HOME
