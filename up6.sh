cd /root/chain33
./chain33-cli close
rm -rf grpc33.log
rm -rf logs
rm -rf bityuan.toml
rm -rf bityuan
rm -rf chain33-cli
sleep 15
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/6.4/bityuan.toml
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/6.4/bityuan-cli
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/6.4/bityuan
chmod 777 bityuan
chmod 777 bityuan-cli
reboot
