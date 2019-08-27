#!/bin/bash

rm -rf bin/

cp -r src/ActionModule/. bin/
cp -r src/CommandModule/. bin/
cp -r src/CoreModule/. bin/
cp -r src/HardwareModule/. bin/
cp -r src/SerialModule/. bin/

cp Makefile bin/
cp octoferm.ino bin/
cp octoferm.mk bin/

cd bin

if [ ! -z $1 ] # Check if upload was provided
then 
    make upload
else
    make
fi

cp -r build-* ../