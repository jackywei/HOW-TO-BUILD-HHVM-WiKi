#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

tar jxf gmp-4.3.2.tar.bz2 &&cd gmp-4.3.2/
./configure --prefix=/usr/local/gmp
make &&make install
