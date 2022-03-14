

# VaultWarden-Local-Only

Local Vaultwarden docker with DuckDNS

This build is only for no access from internet.
git clone https://github.com/Kruuonno/Vaultwarden-Local-Only
#
Your instance will only run on local network.
Use VPN to get back into your network to get external access.
#
modify .env files with your own info
#
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
#
Make sure to change your DuckDNS to match your local Pi's 
![Vaultwarden](https://i.imgur.com/ghZqhcY.jpg)
address example - 192.168.1.55 
This will make a DNS entry and direct your.duckdns.org address to a local address.
Since your caddy server is forwarding you to bitwarden along with the cert 
Valtwarden will run as if it had a cert and was on internet with https://
#
#



