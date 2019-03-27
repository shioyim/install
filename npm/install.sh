#!/bin/bash
if [ "$1" == "install" ];then

  string=$(ls >&1)
  mkdir package
  install="install.sh"
  folder=node
  array=(${string// / })

  for var in ${array[@]}
    do
      #!!!space
      if [ "$var" != "$install" ];then 
      
         #to do something!
         tar -xvf $var -C package
    fi
    done


  sync
  


  string=$(ls package/ >&1)
  sudo mv package/$string /opt/$folder
  sudo ln -s /opt/node/bin/node /usr/local/bin/node
  sudo ln -s /opt/node/bin/npm /usr/local/bin/npm
  rm -rf package/

elif [ "$1" == "uninstall" ];then
  sudo rm -rf /opt/node
  sudo rm -rf /usr/local/bin/node
  sudo rm -rf /usr/local/bin/npm

else
  echo "Not get a correct argument,that either need \"install\" or \"uninstall\"."
fi


#uninstall

