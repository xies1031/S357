cd /root/
[ -e chain33 ] && cd chain33 && ./chain33-cli net info && exit 0
apt-get update
apt-get install wget -y
apt-get install supervisor -y
wget https://raw.githubusercontent.com/asinen/S357/master/bityuan_ubuntu.tar
tar zxf bityuan_ubuntu.tar
cd chain33
cp chain33.conf /etc/supervisor/conf.d/chain33.conf
supervisorctl reload
supervisorctl start chain33
sleep 15
./chain33-cli net info

cd ~/chain33
./chain33-cli seed generate -l 0 | grep seed | cut -d '"' -f 4 > ~/mySeed.txt
cat ~/mySeed.txt | xargs -I{} ./chain33-cli seed save -p 123456 -s "{}"
./chain33-cli  wallet unlock  -p 123456 -s wallet -t 0
sleep 3
./chain33-cli account  list  | grep "node award" -B 2 | grep addr   | cut -d '"' -f 4 > ~/myNodeAddr
cat ~/myNodeAddr | xargs -I{} ./chain33-cli  account dump_key -a {} > ~/myNodePriv
cat ~/myNodePriv   | grep replystr | cut -d '"' -f 4 | xargs  -I{} echo "Run the cmd in wallet PC: account import_key -l $(date +%m%d/%H%M)| -k {} "
