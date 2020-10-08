#!/bin/bash
sudo apt-get update
sudo apt-get install mosquitto-clients -y
sudo mv publish-ip.sh /home/pi/
chmod +x /home/pi/publish-ip.sh
sudo mv publiship.service /etc/systemd/system/publiship.service
sudo systemctl enable publiship.service
sudo systemctl start publiship.service
