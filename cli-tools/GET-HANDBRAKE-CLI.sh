#!/bin/bash

if [ ! -f HandBrakeCLI-1.9.2-win-x86_64.zip ] ; then
    curl -L --output HandBrakeCLI-1.9.2-win-x86_64.zip "https://github.com/HandBrake/HandBrake/releases/download/1.9.2/HandBrakeCLI-1.9.2-win-x86_64.zip"
else
    echo "Already downloaded HandBrakeCLI zip"
fi

if [ ! -d HandBrake ] ; then
    unzip -d HandBrake HandBrakeCLI-1.9.2-win-x86_64.zip
else
    echo "Already unzipped zip as HandBrake/"
fi

#echo ""
#echo "To use, ensure HandBrake/ is on your PATH"
#echo ""
