#!/bin/bash

CORES=$(nproc)
echo $CORES

if [ $CORES -eq 4 ]; then
	echo "Pi2"
	./pcsx
else
	echo "Pi"
	export LD_LIBRARY_PATH=/home/pi/pimame/dispmanx/build/.lib
	./pcsx
fi
