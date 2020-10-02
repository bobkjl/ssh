#!/bin/bash
echo "本脚本为服务器一键开启root账户登录"
echo
sed -i 's/#Port 22/Port 22/g' /etc/ssh/sshd_config
sed -i 's/PermitRootLogin no/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication no/#PasswordAuthentication no/g' /etc/ssh/sshd_config
echo
#
sleep 1
/etc/init.d/ssh restart 2> ./ssh.log
service sshd restart  2> ./ssh.log
service ssh restart  2> ./ssh.log
systemctl restart sshd  2> ./ssh.log
systemctl restart ssh 2> ./ssh.log
ervice ssh restart  2> ./ssh.log
