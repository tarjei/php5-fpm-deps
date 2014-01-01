#!/bin/bash

# Author  Tarjei Huse (tarjei.huse@gmail.com) http://www.kraken.no
# $0 = script name

mkdir repo
prm -t deb -p repo -r saucy --arch amd64  -c php5  -k tarjei@gotime.no
