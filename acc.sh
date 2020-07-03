sudo su
supervisorctl stop bty
cd /root/bityuan/datadir
sleep 1
rm -rf addrbook
sleep 1
supervisorctl start bty
cd /root/bityuan
./bityuan-cli net peer
