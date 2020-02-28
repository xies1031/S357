cd /root/chain33
rm -rf bityuan.toml
rm -rf bityuan
rm -rf grpc33.log
rm -rf logs
sleep 15
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/bityuan.toml
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/bityuan
chmod 777 bityuan
reboot
