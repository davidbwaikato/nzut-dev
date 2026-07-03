#!/bin/bash

if [ ! -f zulu8.90.0.19-ca-fx-jdk8.0.472-linux_x64.tar.gz ] ; then   
    wget --no-check-certificate -v https://cdn.azul.com/zulu/bin/zulu8.90.0.19-ca-fx-jdk8.0.472-linux_x64.tar.gz
else
    echo "Already downloaded zulu-based JDK tar.gz file"
fi


if [ ! -d jdk-fx8 ] ; then
    tar xvzf zulu8.90.0.19-ca-fx-jdk8.0.472-linux_x64.tar.gz 
    mv zulu8.90.0.19-ca-fx-jdk8.0.472-linux_x64 jdk-fx8
else
    echo "Already unpacked zulu-based JDK to jdk-fx8"
fi

