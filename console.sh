# 1. Setup variables
HOST=localhost
PASSWORD=$(cat /home/minecraft/server.properties | grep rcon.password | cut -d"=" -f2)
PORT=$(cat /home/minecraft/server.properties | grep rcon.port | cut -d"=" -f2)

# 2. Start the console
mcrcon -H $HOST -P $PORT -p $PASSWORD
