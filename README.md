This project is inspired by the following youtube videos:
* How to Set Up a PaperMC Minecraft Server on Linux
  * LucianDev
  * https://youtu.be/w-tQVrt2ZJc

* How to Make A Minecraft Server on the Google Cloud (For Free!)
  * Ethan Ledig
  * https://youtu.be/1G8LIwuEiTU

# Get Google Cloud Provider account

* https://cloud.google.com/
* $ 300 for 90 days

## Compute Engine / Instance templates

Name: mcserver-mem8
Region: europe-west1 (Belgium)
* EU cheapest and low CO2

Machine type:
* e2-standard-2 (2 vCPU, 1 core, 8GB)

Boot Disk
* Type: New SSD persistent disk
* Size: 20 GB
* Image: CentOS Stream 10

Access scopes
* Set access for each API
  * Storage -> Read/Write

## Advance options

### Networking
* Networking tags: minecraft-server
* Hostname: mc.server
* Network interfaces
  * Create IPv4 address
  * Standard (europe-west1)

### Disks
Attach existing disk

* Name: mcserver-disk
* Source type: Blank disk
* Type: SSD persistent
* Size: 50 GB

### Security

VM access / Manage access
* + Add item from $ cat ~/.ssh/gcompute.pub after
* $ ssh-keygen -t rsa -f ~/.ssh/gcompute -C $USER
  * DO NOT $ cat ~/.ssh/gcompute !!!

Create the templates

Back in Instance templates, select template and click "+ Create VM" and on top "Create VM from..." / "Intance templates".

Select the template and click "Create"

## SSHing to computer

$ getginstances

$ connectMySQL $1

# Prepare the Server

## Update and install
* See loadPackages.sh
* $ git clone this repo
* $ cd mcserver
* $ cp -r .GITenv/ .emacs .bashrc ~
* $ chmod +x *.sh

## Mount the disk
* See useExternalDisk.sh
* $ cd /home/minecraft

## Get the MC Paper software
* See getPaperMC.sh
* Might need to update LINKPMC
* Includes EULA acceptance.

## Start server to get the files ready
$ ./startMC.sh
* CTRL+c to cancel once the world is generated.

## Enable RCON
* See enableRcon.sh

## Create automatic loading of server
* See createService.sh

## Get the Minecraft Console (to /op a player, etc)
* See console.sh

## Open PORT 25565 in GCP FIREWALL on this instance.

### In GCP go to Menu / VPN network / Firewall

* + CREATE FIREWALL RULE
* Name: minecraft-rule
* Target: Specific target tags
* Target tags: minecraft-server (set from instance creation network configuration)
* Source filter range: 0.0.0.0/0 (means from everywhere. You can consider using just specific IP addresses).
* Protocols and ports: check "Specific protocols and ports", tick TCP and insert the 25565 port (default for minecraft)
** If port is other than 25565, you need to add ":PORT" when connecting to the world (next section).


## Open minecraft and connect to your brand new server
* Multiplayer / Direct Connection
* Use EXTERNAL IPv4 comma 25565.