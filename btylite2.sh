cd /root/
[ -e chain33 ] && cd chain33 && ./chain33-cli net info && exit 0
apt-get update
apt-get install wget -y
apt-get install supervisor -y
wget https://bityuan.com/download/bityuan_ubuntu-lite.tgz
tar zxf bityuan_ubuntu-lite.tgz
cd chain33
cp chain33.conf /etc/supervisor/conf.d/chain33.conf
rm -rf bityuan.toml
rm -rf bityuan
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/6.4/bityuan.toml
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/6.4/bityuan-cli
wget http://bty33.oss-cn-shanghai.aliyuncs.com/xstest/6.4/bityuan
chmod 777 bityuan
supervisorctl reload
supervisorctl start chain33
sleep 15
./chain33-cli net info

cd ~/chain33
./chain33-cli seed generate -l 0  > ~/mySeed.txt
echo "bty123456" > ~/myPass
cat ~/mySeed.txt | xargs -I{} ./chain33-cli seed save -p bty123456 -s "{}"
./chain33-cli  wallet unlock  -p bty123456 -s wallet -t 0
sleep 15
./chain33-cli account  list  | grep "airdropaddr" -B 2 | grep addr  -w | cut -d '"' -f 4 > ~/myAirdropAddr
cat ~/myAirdropAddr | xargs -I{} ./chain33-cli  account dump_key -a {} > ~/myAirdropPriv
cat ~/myAirdropPriv | grep data| cut -d '"' -f 4 | xargs  -I{} echo "account import_key -l ali00001 -k {} "
