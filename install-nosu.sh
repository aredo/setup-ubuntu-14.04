#!/bin/bash

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

source ~/.nvm/nvm.sh

echo 'source ~/.nvm/nvm.sh' >> ~/.bashrc
echo 'source ~/.nvm/nvm.sh' >> ~/.profile
echo 'source ~/.nvm/nvm.sh' >> ~/.zshrc

# install node
nvm install 0.10.26
nvm use 0.10.26
nvm alias default 0.10.26

# install other useful tools
npm install pm2 -g
npm install nodemon -g
npm install grunt-cli -g

\curl -sSL https://get.rvm.io | bash -s stable --rails

source ~/.rvm/scripts/rvm

gem install scout_realtime
gem install bson_ext
gem install genghisapp

rm -rf ~/tmp

echo 'please restart your server to complete the installation'
echo 'use: sudo shutdown -r now'
