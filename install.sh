#!/bin/bash

if [ $UID != 0 ]
then
    echo "Need root permission!"
    exit 1
fi

if ! [ -f service_tunnel.sh ]
then
    echo "Please execute me in project directory."
    exit 2
fi

if [ "$1" == "" ]
then
    echo "Please give me the name of service user or give me "'$USER'"."
    exit 3
fi

if [ -f /etc/systemd/system/service_tunnel.service ]
then
    systemctl stop service_tunnel
    systemctl disable service_tunnel
    rm /etc/systemd/system/service_tunnel.service
    systemctl daemon-reload
fi

sed "s={{path}}=$(pwd)=g" service_tunnel.service |\
sed "s={{service_user}}=$1=g" > /etc/systemd/system/service_tunnel.service
systemctl daemon-reload
systemctl enable service_tunnel
systemctl start service_tunnel
