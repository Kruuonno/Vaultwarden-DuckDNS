

# VaultWarden-Local-Only

Local Vaultwarden docker with DuckDNS

Auto run and answer questions to build .env files


## wget -O - https://rebrand.ly/github-kruuonno-vault | bash

![Vaultwarden](https://i.imgur.com/ghZqhcY.jpg)




Your instance will only run on local network.
Use VPN to get back into your network to get external access.
Depending on your server you may need to get your own caddy file.
Download correct caddy file from https://caddyserver.com/download
#
Caddy will use acme and get a cert for you automatically
based on your email and DuckDNS info entered into .env files.
#
For raspberry Pi 4 64bit get the linux/arm64 version
Make sure to pick caddy-dns/duckdns.
## Once downloaded rename to caddy and replace caddy in the directory you just cloned.
#
make caddy executable    **chmod u+x caddy**

Run 
**docker-compose up -d** 
to run docker


