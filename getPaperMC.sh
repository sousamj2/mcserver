# Link from PaperMC server
# Probably need to get later version
LINKPMC=https://fill-data.papermc.io/v1/objects/3b4e1bb2a358a25b8bcea83e1cfa1d03313dda7e615f202195ca6172e6cef9eb/paper-26.1.2-5.jar

# 1 retrieve server jar from link
wget $LINKPMC

# 2 sign the eula
echo "eula=true">> eula.txt 
