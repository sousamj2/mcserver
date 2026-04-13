# 1. enable rcon
sed -i -e 's/enable-rcon=false/enable-rcon=true/g' /home/minecraft/server.properties

# 2. get a random password for rcon
PASSWORD=$(tr -dc 'A-Za-z0-9!?%=' < /dev/urandom | head -c 10)

# 3. use the password for rcon
sed -i -e "s/rcon.password=/rcon.password=${PASSWORD}/g" /home/minecraft/server.properties

# 4. Download rcon and install it

git clone https://github.com/Tiiffi/mcrcon.git
cd mcrcon
make
sudo make install
cd ..
rm -rf mcrcon
