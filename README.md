# minecraft-empire

Docker container for an FTB Unleashed server

# Deploying

1. Check out the repo
2. `make run TAG=foo`
3. Ensure 25565 forwarded

# Future

CoreOS / Flocker ???

My initial thought was that I'd try something like Empire to manage deployments,
I may still do so if I can do it while achieving these goals:

- World directory can be imported/exported via a web frontend
- World directory is stored in a way that survives server destruction
- Daily snapshots are taken and put into cold storage 
- Simple deployment of server, logging in and manually starting docker sucks
