supervisorctl stop bty
cd ~/bityuan
rm -rf datadir
rm -rf bityuan.toml
sleep 5
wget https://raw.githubusercontent.com/xies1031/S357/master/bityuan.toml
supervisorctl start bty
