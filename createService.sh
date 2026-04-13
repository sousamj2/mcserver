# 1. Create service to run the paper MC
sudo cat > /etc/systemd/system/mcpserver.service << EOF
[Unit]
Description=Minecraft PaperMC Server
After=network.target

[Service]
WorkingDirectory=/home/minecraft
User=sargedas
ExecStart=/home/minecraft/start.sh
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
