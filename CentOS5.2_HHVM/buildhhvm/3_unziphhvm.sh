#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

BUILD_HOME=/home/dev

#3. unpack the hiphop-php
cd $BUILD_HOME
unzip $BUILD_HOME/centos/hhvmsrc/*.zip
mv hiphop*  hiphop-php
cd $BUILD_HOME/hiphop-php
source /home/dev/centos/buildhhvm/setenv.sh
