#!/bin/bash


##jdk_binary_dist=zulu17.64.17-ca-fx-jdk17.0.18-win_x64
jdk_binary_dist=zulu17.64.17-ca-jdk17.0.18-win_x64
jdk_install_dir=jdk-v17

jdk_zipfile=$jdk_binary_dist.zip


if [ ! -f $jdk_zipfile ] ; then
    wget --help >/dev/null 2>&1
    if [ $? = 0 ] ; then
	wget --no-check-certificate -v https://cdn.azul.com/zulu/bin/$jdk_zipfile
    else
	curl https://cdn.azul.com/zulu/bin/$jdk_zipfile > $jdk_zipfile
    fi
else
    echo "Already downloaded zulu-based JDK tar.gz file"
fi


if [ ! -d $jdk_install_dir ] ; then

    # Work with Windows 'tar', which can handle zip format
    tar_full_path='C:\Windows\System32\tar.exe'

    cygpath --help >/dev/null 2>&1
    if [ $? = 0 ] ; then
	tar_full_path=`cygpath $tar_full_path`
    fi
    $tar_full_path xvzf $jdk_zipfile

    
    # Sometimes mv command gets 'permission denied' on Windows
    # => likely to be file-lock related
    # => adding small sleep to give OS file-system tie to settle down after unzipping
    sleep 2

    /bin/mv -v $jdk_binary_dist $jdk_install_dir
else
    echo "Already unpacked zulu-based JDK to $jdk_install_dir"
fi

