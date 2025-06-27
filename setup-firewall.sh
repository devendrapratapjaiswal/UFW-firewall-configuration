#!/bin/bash
echo "Configuring UFW Firewall..."
sudo ufw allow 22/tcp
sudo ufw deny 23/tcp
sudo ufw reload
sudo ufw status verbose

