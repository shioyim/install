

#!/bin/bash
if [ "$1" == "install" ];then

  sudo npm install -g webpack webpack-dev-server webpack-cli
  sudo ln -s /opt/node/bin/webpack /usr/local/bin/webpack
  sudo ln -s /opt/node/bin/webpack-dev-server /usr/local/bin/webpack-dev-server
  sudo ln -s /opt/node/bin/webpack-cli /usr/local/bin/webpack-cli
elif [ "$1" == "uninstall" ];then
  sudo npm uninstall -g webpack webpack-dev-server webpack-cli
  sudo rm /usr/local/bin/webpack
  sudo rm /usr/local/bin/webpack-dev-server
  sudo rm /usr/local/bin/webpack-cli

else
  echo "Not get a correct argument.Please input \"install\" or \"uninstall\"."
fi
