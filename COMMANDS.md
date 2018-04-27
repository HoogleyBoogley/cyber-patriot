# List of commands
These are all good commands that can be run!

### Disbaling root
  1. Edit your SSH config using `$ sudo vim /etc/ssh/sshd_config`.
  2. Replace `PermitRootLogin yes` to `PermitRootLogin no`.
  3. Save the file and exit vim.
  
### Changing SSH ports
  1. Edit your SSH config using `$ sudo vim /etc/ssh/sshd_config`.
  2. Replace `# Port 22` with `Port [DESIRED_PORT]`.
  3. Save the file and exit vim.

### Installing Fail2Ban
  1. Install Fail2Ban with `apt-get` using `$ sudo apt-get install fail2ban`.
  2. Copy the `jail.conf` file using `$ awk '{ printf "# "; print; }' /etc/fail2ban/jail.conf | sudo tee /etc/fail2ban/jail.local`.
  3. You may configure Fail2Ban options using `$ sudo vim /etc/fail2ban/jail.conf`.

### Setup a firewall
  1. Install Fail2Ban with `apt-get` using `$ sudo apt-get install ufw`.
  2. **OPTIONAL** If using IPv6, enable it by editing `/etc/default/ufw` and setting `IPV6=yes`.
  3. Deny all incomming connections by using `$ sudo ufw default deny incoming`.
  4. Allow all outgoing connections by using `$ sudo ufw default allow outgoing`.
  5. To allow certain ports through the firewall, use `$ sudo ufw allow [DESIRED_PORT]`.
  6. To deny certain ports through the firewall, use `$ sudo ufw deny [DESIRED_PORT]`.
  7. To allow certain IPs through the firewall, use `$ sudo ufw allow from [DESIRED_IP]`.
  8. To deny certain IPs through the firewall, use `$ sudo ufw deny from [DESIRED_IP]`.
  9. Enable the firewall by typing `$ sudo ufw enable`.
  10. Check firewall by using `$ sudo ufw status numbered`.
  11. Remove rules by using `$ sudo ufw delete [RULE_ID]`.
  
### Disabling IPv6
  1. Edit the file `/etc/sysctl.conf` by using `$ sudo vim /etc/sysctl.conf`
  2. Add the following lines to the end:
```
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
```
  3. Activate the file by typing `$ sudo sysctl -p`.
  4. Run `$ cat /proc/sys/net/ipv6/conf/all/disable_ipv6` in the terminal.
  5. If the command returns a true value, than IPv6 has been disabled.
  
### Password Policy
  1. Edit the `/etc/pam.d/common-password` file by typing `$ sudo vim /etc/pam.d/common-password`.
  2. Include `password requisite pam_cracklib.so minlength=12 ucredit=-3 lcredit=-3 dcredit=-4  ocredit=-2` before `pam_unix.so`. What this will do is require 3 upercase letters, 3 lowercase letters, 4 numbers, 2 special characters and a minimum length of 12 characters.
  
### Rootkit Scanners
  1. Install chkrootkit with apt-get by entering `$ sudo apt-get install chkrootkit` into the terminal.
  2. Run `chkrootkit` to scan the server.
  

  
