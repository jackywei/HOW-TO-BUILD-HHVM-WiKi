#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

echo install libmcrypt
./4_libmcrypt.sh

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

echo install icu
./11_icu.sh  

echo install oniguruma
./12_oniguruma.sh

echo install c-client
./13_cclient.sh

echo install boost
./14_boost.sh

echo install google_glog
./google_glog.sh
