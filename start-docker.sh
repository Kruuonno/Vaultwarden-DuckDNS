#! /bin/bash

if (whiptail --title "Do You Want To Start Vaultwarden Docker ?" --yesno "Select Yes or No" 8 78 --no-button "No" --yes-button "Yes" ); then
echo "Running, exit status was $?."

sleep 5s

echo $(docker-compose up -d);

else
echo "Stopped, exit status was $?."

fi

echo "(Exit status was $exitstatus)"
