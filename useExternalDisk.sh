# 1. Create folder to mount disk
sudo mkdir -p /home/minecraft

# 2. Change ownership of disk
sudo chown $USER:$USER /home/minecraft

# 3. Format disk
lsblk -f # check if /dev/sd[ab] disk exists to format it
sudo mkfs.ext4 /dev/sda

# 4. Mount disk in created folder and cross check
sudo mount /dev/sda /home/minecraft/
df -h

cd /home/minecraft
