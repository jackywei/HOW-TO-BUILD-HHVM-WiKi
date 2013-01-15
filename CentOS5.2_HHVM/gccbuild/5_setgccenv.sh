#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################


cp gcc.4.6.3.conf /etc/ld.so.conf.d/gcc.4.6.3.conf
ldconfig
mv /usr/bin/gcc  /usr/bin/gcc_old
mv /usr/bin/g++  /usr/bin/g++_old
ln -s -f /usr/local/gcc/bin/gcc  /usr/bin/gcc
ln -s -f /usr/local/gcc/bin/g++  /usr/bin/g++

cp /usr/local/gcc/lib64/libstdc++.so.6.0.16 /usr/lib64/.
mv /usr/lib64/libstdc++.so.6 /usr/lib64/libstdc++.so.6.bak
ln -s -f /usr/lib64/libstdc++.so.6.0.16 /usr/lib64/libstdc++.so.6

