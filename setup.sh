#!/bin/sh

[ -d /etc/firewall ] && rm -rf /etc/firewall
mkdir -p /etc/firewall
chmod 0700 /etc/firewall

for file in $(ls -1 firewall.*)
do
    echo "file: " $file
    cp $file /etc/firewall/
done

cp firewall /etc/init.d/
