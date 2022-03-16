

# VaultWarden-Local-Only
If you are looking to have Valtwarden runing behind your router in your network not accessible to ouside internet, then this should do it.
Caddy is used as a proxy and can get certificates to create the https site inside your environment.
#
Prerequisites:
- [ ] docker and docker-compose installed
- [ ] wget installed (only needed if want to have one click install)
- [ ] DuckDNS token 
- [ ] Email address to register the cert with lets encrypt'
#
### `code` wget -O - https://rebrand.ly/github-kruuonno-vault | bash
Once you run the script, you will be asked a series of questions.
- [ ] Enter Duckdns Token (Need to register @ DuckDNS)
- [ ] Enter Domain Name (DuckDNS name you chose - only need the name part DuckDNS will auto populate)
- [ ] Enter Email (For lets encrypt to dreate cert)

This will auto populate the correct .env fields.
That is all that is needed to build your caddy and vaultwarden dockers.
At the end of questions you can choose to start Vaultwarden docker.

Visit your domain name example.duckdns.org and you should be presented with Vaultwarden/Bitwarden create account.

#
Use VPN to get back into your network to get external access.
Depending on your server you may need to get your own caddy file.
Download correct caddy file from https://caddyserver.com/download
Also make sure to select DuckDNS version along with arch type.
make caddy executable  
### `code` chmod u+x caddy
#
Caddy will use acme and get a cert for you automatically
based on your email and DuckDNS info entered question box earlier.
#
For raspberry Pi 4 64bit get the linux/arm64 version
Make sure to pick caddy-dns/duckdns.
Once downloaded rename to caddy and replace caddy in the directory you just cloned.
make caddy executable    **chmod u+x caddy**

To run Vaultwarden execute docker cmd inside of Vaultwarden folder
#
### `code` docker-compose up -d 

