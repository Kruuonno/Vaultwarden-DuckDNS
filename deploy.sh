#!/bin/bash

##### Download from github ######
git clone https://github.com/Kruuonno/Vaultwarden-DuckDNS.git


echo "Loading Please Wait"
sleep 2

echo "Enter Your DuckDns Token"

token=$(whiptail --inputbox "Enter Token Key" 10 30 3>&1 1>&2 2>&3)
domain=$(whiptail --inputbox "Enter Your Duckdns Name Only" 10 30 3>&1 1>&2 2>&3)
email=$(whiptail --inputbox "Enter Your Email" 10 30 3>&1 1>&2 2>&3)


echo "$token"
echo "$domain"
echo "$email"


whiptail --ok-button Done --msgbox "Your Info Entered  \nToken: $token  \nDomain: $domain \nEmail: $email " 20 50

cd Vaultwarden-DuckDNS/
chmod u+x caddy


sed -i "s/token/${token}/g" ./caddy.env

sed -i "s/domain/${domain}/g" ./caddy.env

sed -i "s/email/${email}/g" ./.env

sed -i "s/token/${token}/g" ./.env

sed -i "s/domain/${domain}/g" ./.env

chmod u+x ./start-docker.sh
./start-docker.sh
