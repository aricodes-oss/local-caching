# local-caching

Sets up the client configuration for a local pull-through cache, applying to both Docker images and `apt` packages.

# How to use

Copy `hosts.example` to a file named `hosts`, making sure to put in the IP addresses or locally resolvable hostnames of every node you want to apply this to.

After that, make sure you edit `docker-daemon.json` and `apt-proxy-checker.sh` to add the IP address of your cache server. In my case this is `192.168.1.2`.

# Why?

I run a Pi cluster, a couple different development machines, and a number of servers on my network. _All_ of them use Docker (the cluster especially - it uses docker swarm) and most of them run Ubuntu. Going all the way out to the internet to fetch the same layers and packages over and over again is ridiculous and slow, so I use my NAS to run some caching proxy services for those.

This helps a _lot_ for Docker alone and allows me to free up disk space on all of my machines.
