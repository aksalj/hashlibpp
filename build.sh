#!/bin/sh

#
#  Simple quick build, modify to meet your needs.
#

INCLUDE_PATH=${PWD}/build/include
LIB_PATH=${PWD}/build/lib

cd src

make
mkdir -p $INCLUDE_PATH
mkdir -p $LIB_PATH
cp libhl++.a $LIB_PATH
cp *.h $INCLUDE_PATH

cd ../

echo Done

