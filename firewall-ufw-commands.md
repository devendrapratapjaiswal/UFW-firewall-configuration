
### `firewall steps used to perform the task (not exact as used to perform the task)`

```text
# UFW Firewall Configuration Log

# Check if UFW is active
sudo ufw status verbose

# Block Telnet port (23)
sudo ufw deny 23/tcp

# Test if blocked using: telnet 127.0.0.1 23
# Or use: nc -zv 127.0.0.1 23

# Allow SSH port (22)
sudo ufw allow 22/tcp

# Remove test rule for cleanup
sudo ufw delete deny 23/tcp

# Recheck status
sudo ufw status verbose


# Enable UFW
sudo ufw enable

# Allow SSH (port 22)
sudo ufw allow 22
sudo ufw allow from 127.0.0.1 to any port 22

# Deny Telnet (port 23)
sudo ufw deny 23

# Check status and rules
sudo ufw status
sudo ufw status verbose

# Delete deny rule for port 23 (if needed)
sudo ufw delete deny 23

# Check open/listening ports
netstat -tulnp
netstat -l
ss -tulnp

# Scan port 23 with Nmap
nmap -p 23 localhost

# List iptables rules
iptables -L INPUT -n -v

# Try telnet connection
telnet 127.0.0.1 23

