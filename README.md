# Firewall Setup and Rule Testing (UFW)

---

## Objective

To configure a firewall (UFW on Linux) and test rules that allow/block specific network traffic such as SSH or Telnet.

---

##  Tools

- OS: Kali Linux (or any Linux distro with UFW)
- Firewall Tool: **UFW (Uncomplicated Firewall)**
- Utilities: netcat (`nc`), telnet (for connection testing)

---

##  Steps 

| Step | Action |
|------|--------|
|  1 | Enabled UFW if not already active |
|  2 | Listed current firewall rules |
|  3 | Blocked inbound port `23` (Telnet) |
|  4 | Tested Telnet connection – **Blocked as expected** |
|  5 | Allowed port `22` (SSH) |
|  6 | Restored firewall to original state (removed test rule) |
|  7 | Documented commands and screenshots |

---



##  Firewall Commands Used

```bash
sudo ufw status verbose
sudo ufw deny 23/tcp
sudo ufw allow 22/tcp
sudo ufw delete deny 23/tcp

Full command log in: firewall-ufw-commands.txt

---

| Screenshot File                              | Description                                                   |
| -------------------------------------------- | ------------------------------------------------------------- |
| `current-firewall-rules-using-iptables.png`  | Current `iptables` rules showing port filters applied via UFW |
| `netstat-listening-ports.png`                | Active ports and services running on system                   |
| `nmap-scan-for-ports.png`                    | Nmap scan showing port 23 (Telnet) closed                     |
| `port-23-allowed-and-deleted.png`            | Adding and deleting Telnet rule (port 23)                     |
| `port-23-blocked-as-shown-form-iptables.png` | Port 23 blocked visibly in iptables listing                   |
| `ports-listening.png`                        | `netstat -l` output showing listening services                |
| `rule-added-ssh-port-22-allowed.png`         | SSH (port 22) allow rule added                                |
| `tcp-port-22-ssh-closed.png`                 | Before SSH rule added — port 22 closed                        |
| `tcp-port-23-telnet-closed.png`              | Telnet connection refused confirming UFW block                |

---

How a Firewall Filters Traffic
A firewall filters traffic by enforcing rules that determine whether incoming or outgoing network packets should be allowed or blocked based on parameters like:
-IP addresses (source/destination)
-Port numbers (e.g., 22 for SSH, 80 for HTTP)
-Protocol types (TCP, UDP, ICMP)
-Direction (inbound or outbound)

For example, in your case with UFW:
* Allowed SSH (port 22) traffic to maintain secure remote access.
* Denied Telnet (port 23) traffic to block insecure communication.
