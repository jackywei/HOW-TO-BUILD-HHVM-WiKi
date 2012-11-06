#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

export BUILD_HOME=/home/dev
export CC=gcc
export CXX=g++
export CMAKE_PREFIX_PATH=`/bin/pwd`/../usr
export HPHP_HOME=`/bin/pwd`
export HPHP_LIB=`/bin/pwd`/bin
export USE_HHVM=1
