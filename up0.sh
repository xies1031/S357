cd /root/chain33
./chain33-cli close
rm -rf grpc33.log
rm -rf logs
rm -rf bityuan.toml
sleep 10
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/6.3/bityuan.toml
reboot
