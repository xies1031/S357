  
supervisorctl stop bty
cd ~/bityuan
rm -rf datadir
rm -rf bityuan
sleep 1
rm -rf bityuan.toml
sleep 5
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/bityuan.toml
sleep 1
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/bityuan
sleep 1
chmod 777 bityuan
supervisorctl start bty
sleep 5

