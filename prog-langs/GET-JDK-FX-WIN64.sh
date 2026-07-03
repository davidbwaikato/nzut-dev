#!/bin/bash


jdk_binary_dist=zulu8.90.0.19-ca-fx-jdk8.0.472-win_x64
jdk_install_dir=jdk-fx8

#jdk_binary_dist=zulu11.84.17-ca-fx-jdk11.0.29-win_x64
#jdk_install_dir=jdk-fx11

#jdk_binary_dist=zulu17.64.17-ca-fx-jdk17.0.18-win_x64
##jdk_binary_dist=zulu17.64.17-ca-jdk17.0.18-win_x64
#jdk_install_dir=jdk-fx17

#jdk_binary_dist=zulu21.48.17-ca-fx-jdk21.0.10-win_x64
#jdk_install_dir=jdk-fx21

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
    
    /bin/mv -v $jdk_binary_dist $jdk_install_dir
else
    echo "Already unpacked zulu-based JDK to $install_dir"
fi

