#!/bin/bash

# Author  Tarjei Huse (tarjei.huse@gmail.com) http://www.kraken.no
# $0 = script name

EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -lt $EXPECTED_ARGS ]
then
    VERSION=1.2.3
else 
    VERSION=$1
fi

wget http://pecl.php.net/get/oauth-$VERSION.tgz

tar zxvf oauth-$VERSION.tgz
pushd oauth-$VERSION
phpize
./configure
make
#mkdir pkg
#mkdir -p pkg/usr/lib/php5/20121212/
#cp modules/oauth.so pkg/usr/lib/php5/20121212/

fpm -t deb -s dir -n php5-oauth -v $VERSION ./modules/oauth.so=/usr/lib/php5/20121212/oauth.so
mv php5-oauth*deb ../repo/dists/saucy/php5/binary-amd64/
popd
#rm -rf oauth-$VERSION*


