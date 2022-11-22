#!/bin/bash

echo "Criando o Script......."

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y

echo "Instalando as dependências"

apt-get install apache2 -y
apt-get install unzip -y

echo "Fazendo o dowloading do arquivo"
cd/tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo"
unzip main.zip

echo "Copiando para pasta Apache"
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizando o scripts......."
