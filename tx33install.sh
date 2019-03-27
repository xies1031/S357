[ -e chain33 ] && cd chain33 && ./chain33-cli net info && exit 0
sudo apt-get update
sudo apt-get install wget -y
sudo apt-get install supervisor -y
sudo wget https://bityuan.com/download/bityuan_ubuntu.tgz
sudo tar zxf bityuan_ubuntu.tgz
sudo cd chain33
sudo cp chain33.conf /etc/supervisor/conf.d/chain33.conf
sudo supervisorctl reload
sudo supervisorctl start chain33
sudo sleep 15
./chain33-cli net info

cd ~/chain33
./chain33-cli seed generate -l 0  > ~/mySeed.txt
cat ~/mySeed.txt | xargs -I{} ./chain33-cli seed save -p 123456 -s "{}"
./chain33-cli  wallet unlock  -p 123456 -s wallet -t 0
sleep 3
./chain33-cli account  list  | grep "node award" -B 2 | grep addr   | cut -d '"' -f 4 > ~/myNodeAddr
cat ~/myNodeAddr | xargs -I{} ./chain33-cli  account dump_key -a {} > ~/myNodePriv
cat ~/myNodePriv   | grep data | cut -d '"' -f 4 | xargs  -I{} echo "account import_key -l $(date +%m%d/%H%M)____ -k {} "
