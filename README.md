# VaultWarden-Local-Only
Local Vaultwarden docker with DuckDNS
Your instance will only run on local network.
Use VPN to get back into your network to get external access.

modify .env files with your own info

Download correct caddy file from https://caddyserver.com/download

For raspberry Pi 4 64bit get the linux/arm64 version
Make sure to pick caddy-dns/duckdns.

Once downloaded renane to cady and replace caddy in directory

make caddy executable.
+
+
+
Run " docker-compose up -d " to run docker

Make sure to change your DuckDNS to match your local Pi's 
address example - 192.168.1.55 
