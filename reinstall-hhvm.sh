#!/bin/bash -e
shopt -q
#######################################
# Facebook HipHop PHP ReInstaller     #
# Written For Ubuntu 12.04            #
#######################################
# GitHub: github.com/jackywei         #
#######################################

UBUNTU_VERSION='12.04'
LIBEVENT_VERSION='1.4.14'
LIBCURL_VERSION='7.21.2'
LIBMEMCACHED_VERSION='0.49'
JEMALLOC_VERSION='3.0.0'

HIPHOP_PHP_GIT='git://github.com/facebook/hiphop-php.git'

DEV_PREFIX_PATH='/home/dev'


## Introduce

echo ""
echo "SUDO OR RUN THIS SCRIPT AS ROOT"
echo ""
echo "This script will reinstall HipHop-PHP HHVM on Ubuntu $UBUNTU_VERSION"
echo "This reintall process will just reinstall the HPHP&HHVM, will not reinstall other packages: libevent,libCurl,libmemcached,jemalloc"
echo ""


## Retrieve optional arguments

echo "HipHop-PHP Git Repository ($HIPHOP_PHP_GIT):"
read CLI_HIPHOP_PHP_GIT
if [ $CLI_HIPHOP_PHP_GIT ] # HipHop-PHP Git repository specified
then
	HIPHOP_PHP_GIT=$CLI_HIPHOP_PHP_GIT
fi


## Install all Ubuntu package dependencies

#echo "Updating Ubuntu package repositories."
#apt-get update -y

#echo "Installing Ubuntu package dependencies."
#apt-get install -y git-core cmake g++ libboost-dev libmysqlclient-dev libxml2-dev libmcrypt-dev libicu-dev openssl build-essential binutils-dev libcap-dev libgd2-xpm-dev zlib1g-dev libtbb-dev libonig-dev libpcre3-dev autoconf libtool libcurl4-openssl-dev libboost-system-dev libboost-program-options-dev libboost-filesystem-dev wget memcached libreadline-dev libncurses-dev libmemcached-dev libbz2-dev libc-client2007e-dev php5-mcrypt php5-imagick libgoogle-perftools-dev libcloog-ppl0 libelf-dev libdwarf-dev


## Cleanup old files

echo "Cleaning up any old files: hiphop-php"
rm -rf ${DEV_PREFIX_PATH}/hiphop-php \
#	${DEV_PREFIX_PATH}/libevent-${LIBEVENT_VERSION}b-stable \
#	${DEV_PREFIX_PATH}/libevent-${LIBEVENT_VERSION}b-stable* \
#	${DEV_PREFIX_PATH}/curl-${LIBCURL_VERSION} \
#	${DEV_PREFIX_PATH}/curl-${LIBCURL_VERSION}* \
#	${DEV_PREFIX_PATH}/libmemcached-${LIBMEMCACHED_VERSION} \
#	${DEV_PREFIX_PATH}/libmemcached-${LIBMEMCACHED_VERSION}* #\
#	${DEV_PREFIX_PATH}/jemalloc-${JEMALLOC_VERSION} \
#	${DEV_PREFIX_PATH}/jemalloc-${JEMALLOC_VERSION}*


## Fetch libraries

#echo "Downloading library dependencies."
#wget -P ${DEV_PREFIX_PATH}/ http://www.monkey.org/~provos/libevent-${LIBEVENT_VERSION}b-stable.tar.gz
#wget -P ${DEV_PREFIX_PATH}/ http://curl.haxx.se/download/curl-${LIBCURL_VERSION}.tar.gz
#wget -P ${DEV_PREFIX_PATH}/ http://launchpad.net/libmemcached/1.0/${LIBMEMCACHED_VERSION}/+download/libmemcached-${LIBMEMCACHED_VERSION}.tar.gz
#wget -P ${DEV_PREFIX_PATH}/ http://www.canonware.com/download/jemalloc/jemalloc-${JEMALLOC_VERSION}.tar.bz2


## Extract library dependencies

#echo "Extracting library dependencies."
#tar -xzvf ${DEV_PREFIX_PATH}/libevent-${LIBEVENT_VERSION}b-stable.tar.gz -C ${DEV_PREFIX_PATH}/
#tar -xvzf ${DEV_PREFIX_PATH}/curl-${LIBCURL_VERSION}.tar.gz -C ${DEV_PREFIX_PATH}/
#tar -xzvf ${DEV_PREFIX_PATH}/libmemcached-${LIBMEMCACHED_VERSION}.tar.gz -C ${DEV_PREFIX_PATH}/
#tar -xjvf ${DEV_PREFIX_PATH}/jemalloc-${JEMALLOC_VERSION}.tar.bz2 -C ${DEV_PREFIX_PATH}/


## Fetch HipHop-PHP

echo "Downloading updated HipHop-PHP."
git clone -b vm $HIPHOP_PHP_GIT ${DEV_PREFIX_PATH}/hiphop-php


## Copy patches into position
echo "Copy patch to hiphop-php"

#cp ${DEV_PREFIX_PATH}/hiphop-php/src/third_party/libevent-${LIBEVENT_VERSION}.fb-changes.diff ${DEV_PREFIX_PATH}/libevent-${LIBEVENT_VERSION}b-stable/
#cp ${DEV_PREFIX_PATH}/hiphop-php/src/third_party/libcurl.fb-changes.diff ${DEV_PREFIX_PATH}/curl-${LIBCURL_VERSION}
#cp ./patch/curl-${LIBCURL_VERSION}.ssluse.diff ${DEV_PREFIX_PATH}/curl-${LIBCURL_VERSION}/lib
cp ./patch/hiphop-php.extension.diff ${DEV_PREFIX_PATH}/hiphop-php/src/runtime/ext


## Setup environmental variables

cd ${DEV_PREFIX_PATH}/hiphop-php
export CMAKE_PREFIX_PATH=`/bin/pwd`/../
export HPHP_HOME=`/bin/pwd`
export HPHP_LIB=`/bin/pwd`/bin
export USE_HHVM=1


## Install library dependencies

#echo "Installing library dependencies."


## libevent

#cd ${DEV_PREFIX_PATH}/libevent-${LIBEVENT_VERSION}b-stable
#patch -p1 < libevent-${LIBEVENT_VERSION}.fb-changes.diff
#./configure --prefix=${CMAKE_PREFIX_PATH}
#make
#make install


## libCurl

#cd ${DEV_PREFIX_PATH}/curl-${LIBCURL_VERSION}
#patch -p1 < libcurl.fb-changes.diff
#./configure --prefix=${CMAKE_PREFIX_PATH}

#cd ${DEV_PREFIX_PATH}/curl-${LIBCURL_VERSION}/lib
#patch -p1 < curl-${LIBCURL_VERSION}.ssluse.diff

#cd ${DEV_PREFIX_PATH}/curl-${LIBCURL_VERSION}
#make
#make install


## libmemcached

#cd ${DEV_PREFIX_PATH}/libmemcached-${LIBMEMCACHED_VERSION}
#./configure --prefix=${CMAKE_PREFIX_PATH}
#make
#make install


## jemalloc

#cd ${DEV_PREFIX_PATH}/jemalloc-${JEMALLOC_VERSION}
#./configure --prefix=${CMAKE_PREFIX_PATH}
#make
#make install


## Build HipHop

echo "Installing HipHop-PHP."
cd ${DEV_PREFIX_PATH}/hiphop-php
git submodule init
git submodule update

export HPHP_HOME=`pwd`
export HPHP_LIB=`pwd`/bin

rm -rf ${DEV_PREFIX_PATH}/hiphop-php/CMakeCache.txt

cd ${DEV_PREFIX_PATH}/hiphop-php/src/runtime/ext
patch -p1 < hiphop-php.extension.diff

cd ${DEV_PREFIX_PATH}/hiphop-php
cmake -DCMAKE_BUILD_TYPE=Debug .
make


## Symbolically link to bins

ln -s -f ${DEV_PREFIX_PATH}/hiphop-php/src/hphp/hphp /usr/bin/hphp
ln -s -f ${DEV_PREFIX_PATH}/hiphop-php/src/hhvm/hhvm /usr/bin/hhvm


## Set HPHP_HOME more permanently
echo "HPHP_HOME='${DEV_PREFIX_PATH}/hiphop-php'" >> /etc/profile


## Success
echo "HipHop-PHP is now reinstalled!"
exit
