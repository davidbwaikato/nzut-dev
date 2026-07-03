

This 'dev' repo contains scripts and setup files that help you get
going in the terminal with necessary programming languages and
command-line tools for the nzut-beginners-app: both to prepare the
content (python-based scripts) and to build the app itself (NodeJS based).

The provided dev scripts will download, configure and install the
programming languages and command-line tools needed (currently for Windows
at time of writing).  Sourcing the provided SETUP.bash then sets your
environment variables as needed for your terminal to find them.


For the Android, you'll need an Android SDK installed.  Due to
its size, this is not done automatically through these scripts.
However, Android itself depends on a JDK being present, and
the dev scripts provided here do help you with that.


# Running the Prepare Content scripts

Before you can build and try out the mobile app, you need to download and
prepare the content (primarily video) that the app provides access to.  This
content comes from the NZUT webwite (primarily video, but also some PDF and
metadata about the resources such a title, author, and musical key).

The scripts that perform this are written in Python and make use of HandBrake
to convert the video content to smaller, more mobile friendly formats.

The development tools are downloaded and installed by running

    ./GET-DEV-TOOLS-PREPARE-CONENT.sh


# Compiling the App

The code for the app has been written using the cross-platform ReactNative + Expo dev-stack,
which is itself built on top of NodeJS.

Run the following script to get NodeJS:

    ./GET-DEV-TOOLS-FOR-EXPO-APP.sh

This script also installs JDK17, a useful stepping-stone for building the Android version
of the app.

For the Android SDK itself, the recommended way to get this is to
download and run the Android Studio installer.  This can be accessed via:

  - https://developer.android.com/studio

The installer can be run as a result user.  On Windows it installs to
%USERPROFILE%/AppData/Local

Alternatively, you can download just the command-line tools which
constitute the Android SDK via:

  - https://developer.android.com/studio#command-line-tools-only

For JDK and NodeJS, this directory contains helper scripts to
download these dev tools using 'curl'.


# Misc: Most recently tested with

Python      : v3.14
Handbrake   : v1.9.2

Android SDK : Android Studio Ladybug Feature Drop | 2024.2.2
JDK         : v17
NodeJS      : v24




