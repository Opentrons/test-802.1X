# test-802.1X

Requirements
Linux system - Using ubuntu 22.04 laptop
Router capable of supporting radius -Using Asus RT-RX88U

https://wiki.freeradius.org/guide/Getting-Started

sudo -s
apt update
apt install -y freeradius
cp clients.conf /etc/freeradius/3.0/clients.conf
cp users /etc/freeradius/3.0/users
make -C /etc/freeradius/3.0/certs


http://deployingradius.com/documents/configuration/eap.html

#run debug
freeradius -X

# see if running

sudo lsof -iUDP -P -n | egrep -v '(127|::1)' | grep freeradiu

# to test

radtest "testing" "password" localhost 1812 testing123

from a container to test from another system on the network

docker run -it -p 1812:1812 freeradius/freeradius-sever:latest /bin/bash
radtest "testing" "password" 192.168.68.104 1812 testing123
