#!/bin/bash

echo "atualizar servidor"
apt-get update -y
apt-get upgrade -y

echo "instalar apache2"
apt-get install apache2 -y

echo "Instalar compactador unzip"
apt install unzip -y

echo "acessar pasta temp"
cd /tmp

echo "baixar a aplicacao disponivel no endereco da aula"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "descompactar pasta"
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/

