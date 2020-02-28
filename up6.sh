cd /root/chain33
./chain33-cli close
rm -rf grpc33.log
rm -rf logs
rm -rf bityuan.toml
rm -rf bityuan
sleep 60
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/bityuan.toml
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/bityuan
chmod 777 bityuan
reboot
