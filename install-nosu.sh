#!/bin/bash

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

source ~/.nvm/nvm.sh

echo 'source ~/.nvm/nvm.sh' >> ~/.bashrc
echo 'source ~/.nvm/nvm.sh' >> ~/.profile
echo 'source ~/.nvm/nvm.sh' >> ~/.zshrc

# install node
nvm install v0.10.33
nvm use v0.10.33
nvm alias default 0.10.33

# install other useful tools
npm install pm2 -g
npm install nodemon -g
npm install grunt-cli -g

\curl -sSL https://get.rvm.io | bash -s stable --rails

source ~/.rvm/scripts/rvm

gem install scout_realtime –no-ri –no-rdoc
gem install bson_ext –no-ri –no-rdoc
gem install genghisapp –no-ri –no-rdoc

rm -rf ~/tmp

echo 'please restart your server to complete the installation'
echo 'use: sudo shutdown -r now'
