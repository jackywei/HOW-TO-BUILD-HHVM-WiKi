#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################


tar jxf mpfr-2.4.2.tar.bz2 ;cd mpfr-2.4.2/
./configure --prefix=/usr/local/mpfr -with-gmp=/usr/local/gmp
make &&make install 
cd ..
