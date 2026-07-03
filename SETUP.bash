

echo "++++"
echo "Setting up dev tools used by prepare-content/ scripts"
echo "++++"

if [ -d prog-langs/python-for-nzut ] ; then
    echo "  Activating 'python-for-nzut'"
    source ./prog-langs/python-for-nzut/Scripts/activate
else
    echo "====" >&2
    echo "Warning: Failed to find:'python-for-nzut/'" >&2
    echo "Have you installed the Python venv for NZUT?" >&2
    echo "====" >&2
fi

if [ -d cli-tools/HandBrake ] ; then

    cd cli-tools/HandBrake \
	&& export PATH="$PWD:$PATH" \
	&& cd ../..
    echo "  Added HandBrake to PATH"
else
    echo "====" >&2
    echo "Warning: Failed to find:'cli-tools/HandBrake'" >&2
    echo "  If 'HandBrake' is not already on your PATH, then video conversion" >&2
    echo "  in prepare-content/ scripts will not work" >&2
    echo "====" >&2
fi


# App dev setup

echo ""
echo "++++"
echo "Setting up dev tools used by ReactNative + Expo code"
echo "++++"

if [ -d prog-langs/node-v24 ] ; then

    cd prog-langs/node-v24  \
	&& export PATH="$PWD/node-v24/:$PATH" \
	&& cd ../.. 
    echo "  Added NodeJS (v24) to PATH"
else
    echo "====" >&2
    echo "Warning: Failed to find:'prog-langs/node-v24'" >&2
    echo "====" >&2
fi

if [ -d prog-langs/jdk-v17 ] ; then

    cd prog-langs/jdk-v17  \
	&& export PATH="$PWD/jdk-v17/bin:$PATH" \
	&& cd ../..
    echo "  Added JDK (v17) to PATH"
else
    echo "====" >&2
    echo "Warning: Failed to find:'prog-langs/jdk-v17'" >&2
    echo "====" >&2
fi

