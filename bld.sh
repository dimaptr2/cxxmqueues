#! /usr/bin/env bash

BUILD_DIR="build"

if [ ! -d $BUILD_DIR ]; then
    mkdir -p $BUILD_DIR
fi

case $1 in
    build)
	    cd $BUILD_DIR
	    cmake .. && cmake --build .
	    cd ../
    ;;
    clean)
	    cd $BUILD_DIR
	    make clean
	    cd ../
	    rm -rf $BUILD_DIR
	    echo "The project has cleaned"
    ;;
    *)
        echo "Use only: build | clean"
	exit 1
esac
