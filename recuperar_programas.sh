#!/bin/bash

user=$USER

cd /home/$user/Descargas

sudo apt install terminator -y 
echo -ne '#####                     (33%)\r'
sleep 1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb 
echo -ne '#######                   (39%)\r'
sleep 1
sudo apt-get install virtualbox -y 

sudo apt install curl -y 
echo -ne '######                    (41%)\r'
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - && echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list && sudo apt-get update && sudo apt-get install spotify-client -y && wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb" -y && sudo apt install ./discord.deb -y && sudo apt install ./discord.deb -y && sudo apt-get install vim


