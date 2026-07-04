

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
	&& export JAVA_HOME="$PWD" \
	&& export PATH="$PWD/bin:$PATH" \
	&& cd ../..
    echo "  Added JDK (v17) to PATH"
else
    echo "====" >&2
    echo "Warning: Failed to find:'prog-langs/jdk-v17'" >&2
    echo "====" >&2
fi


#
# If compiling for Android then you need the Android SDK
#

# For me, Android SDK installed to my user's AppData/Local area
# A system installed Android SDK will likely be somewhere in the "Program Files" area

ANDROID_INSTALL_DIR="$HOME/AppData/Local"


if [ -d "$ANDROID_INSTALL_DIR/Android/Sdk" ] ; then

    echo ""
    echo "----"
    echo "Detected presence of an Android SDK installation"
    echo "=> Setting up Environment Variables"
    echo "----"
    
    export ANDROID_HOME="$ANDROID_INSTALL_DIR/Android/Sdk"
    echo "Set ANDROID_HOME: $ANDROID_HOME"

    export PATH=$ANDROID_HOME/emulator:$PATH
    export PATH=$ANDROID_HOME/platform-tools:$PATH
    export PATH=$ANDROID_HOME/tools:$PATH
    export PATH=$ANDROID_HOME/tools/bin:$PATH
    echo "And added 'emulator', 'platform-tools', 'tools' and 'tools/bin' to PATH"
    echo "----"
else
    echo "----"
    echo "Did not detect Android SDK installation.  Unable to build Android releases of app"
    echo "----"
fi

echo ""
