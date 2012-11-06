#################################################
# to build hhvm on centos5.2                    #
# Jacky - Aug.28 2012                           #
# bin.wei@intel.com                             #
#################################################

cd ../gccbuild/
./1_gmp.sh
./2_mpfr.sh
./3_mpc.sh
./4_gcc.sh
./5_setgccenv.sh
ls /usr/local
cd ../buildhhvm
