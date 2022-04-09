#!/usr/bin/env bash
sudo apt updates && sudo apt install ruby-full yarn bundler
# Install pm2  wich is a production process manager for Node.js  with built-in load balancer
# sudo npm install -g pm2
# stop any instance of our application running currently
# pm2 stop all
# change directory into folder  where application is downloaded
cd rubyonrails-App
#Install application dependencies
bundle update
echo $privatekey > privatekey.pem
echo $server > server.crt
#Start application
bin/rails server -p 8446