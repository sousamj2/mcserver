# Memory allocated for MC application
# Ram 	Player Slots* 	World Size* 	Plugin/Mods*
# 2GB 	Up to 10 	Up to 8GB 	Up to 10
# 3GB 	Up to 15 	Up to 10GB 	Up to 25
# 4GB 	Up to 25 	Up to 15GB 	Up to 40
# 5GB 	Up to 30 	Up to 20GB 	Up to 45******
# 6GB 	Up to 40 	Up to 30GB 	Up to 50
# 8GB 	Up to 90 	Up to 60GB 	50+
# 10GB 	   150+ 	Up to 100GB 	50+
# 16GB 	   150+ 	150+ GB 	50+

MEM=5G # about 60 % of total RAM in machine

# Start server run to create the configuration.
java -Xms${MEM} -Xmx${MEM} -jar paper-26.1.2-5.jar nogui
