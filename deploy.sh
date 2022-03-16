#!/bin/bash
git clone https://github.com/Kruuonno/Vaultwarden-Local-Only.git
cd Vaultwarden-Local-Only
chmod +x auto.sh

read -p "Enter Duckdns Token : " token
read -p "Enter Domain Name : " domain
read -p "Enter Email : " email

echo $token
echo $domain
echo $email

token=$token
domain=$domain
email=$email

sed -i "s/11111111111111111111111111/${token}/g" ./caddy.env

sed -i "s/your/${domain}/g" ./caddy.env

sed -i "s/email@gmail.com/${email}/g" ./.env

sed -i "s/1111111111111111111/${token}/g" ./.env

sed -i "s/your/${domain}/g" ./.env

chmod u+x ./caddy

cat ./.env
cat ./caddy.env

