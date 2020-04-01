cd /root/bityuan
supervisorctl stop bty
./bityuan-cli close
sleep 5
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/bityuan.toml
sleep 5
supervisorctl reload
supervisorctl restart bty
