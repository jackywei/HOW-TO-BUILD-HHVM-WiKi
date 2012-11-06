#################################################
# To build hhvm on centos6.3                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

tar jxf gcc-4.6.1.tar.bz2 ;cd gcc-4.6.1
./configure --prefix=/usr/local/gcc -enable-threads=posix -disable-checking -disable-multilib -enable-languages=c,c++ -with-gmp=/usr/local/gmp -with-mpfr=/usr/local/mpfr/ -with-mpc=/usr/local/mpc/

if
[ $? -eq 0 ];then
echo "this gcc configure is success"
else
echo "this gcc configure is failed"
fi

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/mpc/lib:/usr/local/gmp/lib:/usr/local/mpfr/lib/
make && make install

[ $? -eq 0 ] && echo install success

