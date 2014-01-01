php5-fpm-deps
=============

Bunch of scripts for building various php5 dependencies. Not actually prod quality, but I use them :)

Dependencies
------------

 * fpm: https://github.com/jordansissel/fpm
 * prm: https://github.com/dnbert/prm


Usage
-----

build the packages:

    ./build-php5-sundown.sh
    ./build-php5-oauth.sh

publish to repo:

    ./make-repo.sh


Copy the repo to somewhere nice, like an http endpoint:

    rsync repo/* somewhere...
