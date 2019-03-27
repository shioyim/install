#!/bin/bash
#
zipfile="sublime_text_3_build_3200_x64.tar.bz2"
#
binfile=sublime_text
#
bin=subl
#
binpath=/usr/local/bin/
#
destination=/opt/sublime-text
#
package=sublime
if [ "$1" == "install" ];then


  mkdir package
  tar -xjf $zipfile -C package
  package=$(ls package/ >&1)
  
  sudo mv package/$package $destination
  sudo ln -s $destination/$binfile $binpath/$bin
  rm -rf package/

elif [ "$1" == "uninstall" ];then
  sudo rm -rf $binpath/$bin
  
  sudo rm -rf $destination

else
  echo "Not get a correct argument,that either need \"install\" or \"uninstall\"."
fi


#uninstall

