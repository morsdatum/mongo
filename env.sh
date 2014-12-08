#!/bin/sh
if ( test -d build )then
 rm -rf build
 mkdir build
fi 

cd build
scons -j 4 --opt=on --ssl=on --cc=clang --cxx=clang++ \
	--libc++=on --use-system-pcre=on \
	--use-system-boost=on \
	--use-system-snappy=on \
	--use-system-v8=on \
	-C .. core tools
