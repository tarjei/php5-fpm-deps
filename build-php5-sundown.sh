#!/bin/bash

# Author  Tarjei Huse (tarjei.huse@gmail.com) http://www.kraken.no
# $0 = script name

EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -lt $EXPECTED_ARGS ]
then
    VERSION=0.3.10
else 
    VERSION=$1
fi

wget http://pecl.php.net/get/sundown-$VERSION.tgz

tar zxvf sundown-$VERSION
pushd sundown-$VERSION

./configure
make
#mkdir pkg
#mkdir -p pkg/usr/lib/php5/20121212/
#cp modules/sundown.so pkg/usr/lib/php5/20121212/

fpm -t deb -s dir -n php5-sundown -v $VERSION ./modules/sundown.so=/usr/lib/php5/20121212/sundown.so
mv php5-sundown*deb ..
popd
rm -rf sundown-$VERSION*


