#!/bin/sh
cd `dirname $0`
cd webapp
export PATH=/bin:/usr/bin
CNT=`/usr/bin/git pull|grep 'Already up-to-date.'|wc -l`
NOW=$(date +%Y%m%d%H%M%S)
log() {
  echo "[LOG] $NOW $*"
}
if [ "$CNT" -ne "1" ]; then
 log 'Stop webapp'
 pkill ruby 
 sleep 1
fi
if [ -z $(pgrep ruby) ]; then
 log 'Start webapp'
 ./run.sh
# sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080
else
 log 'webapp Status OK'
fi
