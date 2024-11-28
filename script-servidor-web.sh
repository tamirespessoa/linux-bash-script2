#!/bin/bash

apt-get update
pat-get upgrade -y
echo "Servidor atualizado!"

apt-get install apache2 -y
echo "apache2 instalado!"

apt-get install unzip -y
echo "unzip instalado!"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo "Arquivos da aplicação baixados e copiados!"
