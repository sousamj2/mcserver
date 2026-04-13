# 1. enable rcon
sed -i -e 's/enable-rcon=false/enable-rcon=true/g' /home/minecraft/server.properties

# 2. get a random password for rcon
PASSWORD=$(tr -dc 'A-Za-z0-9!?%=' < /dev/urandom | head -c 10)

# 3. use the password for rcon
sed -i -e 's/rcon.password=/rcon.password=${PASSWORD}/g' /home/minecraft/server.properties

# 4. Download rcon
wget https://github.com/Tiiffi/mcrcon/releases/download/v0.7.2/mcrcon-0.7.2-linux-x86-32.tar.gz

# 5 sudo mv mcrcon
sudo mv mcrcon /usr/local/bin/ && rm -f LICENSE
sudo chmod +x /usr/local/bin/mcrcon
