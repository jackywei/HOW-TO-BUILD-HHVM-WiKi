#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

tar xzf mpc-0.8.1.tar.gz ;cd mpc-0.8.1
./configure --prefix=/usr/local/mpc -with-mpfr=/usr/local/mpfr -with-gmp=/usr/local/gmp
make &&make install
cd ..
