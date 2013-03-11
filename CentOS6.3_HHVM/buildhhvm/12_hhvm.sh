#################################################
# To build hhvm on centos6.3                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################


#15. Install hhvm
cd $BUILD_HOME/hiphop-php
cmake .
#make -j8
make
ln -s -f $BUILD_HOME/hiphop-php/hphp/hhvm/hhvm /usr/bin/hhvm
mkdir /var/log/hhvm

