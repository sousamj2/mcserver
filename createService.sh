#!/bin/bash

# 1. Create service to run the paper MC
sudo cat > /etc/systemd/system/mcpserver.service << EOF
[Unit]
Description=Minecraft PaperMC Server
After=network.target

[Service]
WorkingDirectory=/home/minecraft
User=sargedas
ExecStart=/home/minecraft/startMC.sh
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF

# 2. Reload the daemon
sudo systemctl daemon-reload

# 3. Enable the service
sudo systemctl enable mcpserver.service

# 4. Start the service
sudo systemctl start mcpserver.service

# 5. Check the status of the service
sudo systemctl status mcpserver.service

# This might be necessary if status says:     Process: 7391 ExecStart=/home/minecraft/startMC.sh (code=exited, status=203/EXEC)
# sudo restorecon -Rv /home/minecraft
