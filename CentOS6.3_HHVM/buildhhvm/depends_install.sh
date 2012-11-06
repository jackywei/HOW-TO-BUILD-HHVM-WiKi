#################################################
# to build hhvm on centos6.3                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

echo install libmcrypt
./4_libmcrypt_cen63.sh

echo install libevent
./5_libevent.sh

echo install libCurl
./6_libCurl.sh

echo install libunwind.sh
./7_libunwind.sh

echo install tbb
./8_tbb.sh

echo install libdwarf
./9_libdwarf.sh

echo install libmemcached
./10_libmemcached.sh

echo install boost
./11_boost.sh

