#!/bin/sh
if ( test -d build )then
 rm -rf build
fi 

mkdir build
cd build
scons -j 4 --opt=on --ssl=on --cc=clang --cxx=clang++ \
	--libc++=on --use-system-pcre=on \
	--use-system-boost=on \
	--use-system-snappy=on \
	--js-engine=v8-3.25 \
	-C .. core tools
