#!/bin/sh
###
# 1. Install dropbox: wget -O - "http://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# 2. Initialize dropboxd with your dropbox account
# 3. Set a daily cron task to synchronize dropbox
# 0 1 * * * sh /path/to/sync-dropbox.sh start
# 30 1 * * * sh path/to/sync-dropbox.sh stop
###
start(){
echo "Starting dropbox..."
/root/.dropbox-dist/dropboxd &
}
stop(){
echo "Stopping dropbox..."
pkill dropbox
}
case "$1" in
start)
start
;;
stop)
stop
;;
esac