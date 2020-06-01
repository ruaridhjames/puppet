Installation Order:

1: Puppetmaster
2: NFS Server
3: Jenkins
4: Jenkins Worker(s)
5: Nexus
6: Logger

Notes:
Requires Vagrant Reload plugin
Check IP addresses don't clash
If changing the IP address of the NFS server, be sure to reflect these changes in the PV.yml file for Jenkins
