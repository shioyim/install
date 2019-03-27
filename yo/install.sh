#!/bin/bash
if [ "$1" == "install" ];then

  sudo npm install -g yo@latest
  sudo ln -s /opt/node/bin/yo /usr/local/bin/yo

elif [ "$1" == "uninstall" ];then
  sudo npm uninstall yo 
  sudo rm /usr/local/bin/yo

else
  echo "Not get a correct argument.Please input \"install\" or \"uninstall\"."
fi
