# docker-ansible-ufw
Docker image using ansible to allow ufw access on certain servers for the running machine

## Use case
In a cloud environment you have throw away hosts(also called droplets). To run
stateful apps on them they need access to a permanent network storage, most
likely nfs.

To allow access from the droplet to the storage server it has to register with
the storage server, allowing traffic from the droplets ip to the necessary ports

## Concept
The sotrage server has a management user which has passwordless sudo to the ufw
command. TODO: subset of the ufw command necessary for adding ports.  
The container receives the ssh key necessary to log into the storage server via
ssh and uses ansible to enable the given ports in ufw. Important: Networking
mode has to be `host` for ansible to use the correct droplet Ip

## Environment
HOSTS: comma separated list of ports. Defaults to 111
PORTS: comma separated list of ports. Defaults to 111
UFW\_USER: string. Required
UFW\_PRIVATE\_KEY: string. Required
