#!/bin/bash

case $2 in
backup)
/sbin/iptables -t nat -A PREROUTING -d $1 -p tcp -j REDIRECT
;;
master)
/sbin/iptables -t nat -D PREROUTING -d $1 -p tcp -j REDIRECT
;;
esac
