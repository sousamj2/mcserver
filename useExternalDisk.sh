# 1. Create folder to mount disk
sudo mkdir -p /home/Minecraft

# 2. Change ownership of disk
sudo chown $USER:$USER /home/Minecraft

# 3. Format disk
lsblk -f # check if /dev/sdb disk exists to format it
sudo mkfs.ext4 /dev/sdb

# 4. Mount disk in created folder and cross check
sudo mount /dev/sdb /home/minecraft/
df -h



