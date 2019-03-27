#!/bin/bash
#
zipfile="rinetd.tar.gz"

if [ "$1" == "install" ];then
  mkdir package
  sudo mkdir -p /usr/man/man8
  tar zxvf $zipfile -C package
  package=$(ls package/ >&1)  
  pwd=$(pwd)
  cd package/$package
  make 
  sudo make install
  cd $pwd
  rm -rf package/

elif [ "$1" == "uninstall" ];then
  array=$(whereis rinetd)
  array=(${array// / })
  for var in ${array[@]}
    do
      #!!!space
      if [ "${var:0:6}" != "rinetd" ];then 
      
         #to do something!
        sudo rm -rf $var
    fi
    done


else
  echo "Not get a correct argument,that either need \"install\" or \"uninstall\"."
fi




