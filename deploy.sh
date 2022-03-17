#!/bin/bash


git clone https://github.com/Kruuonno/Vaultwarden-Local-Only.git


echo "Loading Please Wait"
sleep 2

echo "Enter Your DuckDns Token"

token=$(whiptail --inputbox "Enter Token Key" 10 30 3>&1 1>&2 2>&3)
domain=$(whiptail --inputbox "Enter Your Duckdns Name Only" 10 30 3>&1 1>&2 2>&3)
email=$(whiptail --inputbox "Enter Your Email" 10 30 3>&1 1>&2 2>&3)
#docker=$(whiptail --yesno "Do You Want To Start Vaultwarden Docker ?" 10 30 3>&1 1>&2 2>&3)


echo "$token"
echo "$domain"
echo "$email"



whiptail --ok-button Done --msgbox "Your Info Entered  \nToken: $token  \nDomain: $domain \nEmail: $email " 20 50

cd Vaultwarden-Local-Only/
chmod u+x caddy

sleep 5s

if (whiptail --title "Do You Want To Start Vaultwarden Docker ?" --yesno "Select Yes or No" 8 78 --no-button "No" --yes-button "Yes" ); then
echo "Running, exit status was $?."

echo $(docker-compose up -d);

else
echo "Stopped, exit status was $?."

fi

echo "(Exit status was $exitstatus)"


sed -i "s/token/${token}/g" ./caddy.env

sed -i "s/domain/${domain}/g" ./caddy.env

sed -i "s/email/${email}/g" ./.env

sed -i "s/token/${token}/g" ./.env

sed -i "s/domain/${domain}/g" ./.env


docker ps

cat ./caddy.env
cat ./.env
