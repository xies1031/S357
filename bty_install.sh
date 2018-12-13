cd /root/
[ -e bityuan ] && ./chain33-cli net info && exit 0
apt-get update
apt-get install wget -y
apt-get install supervisor -y
wget https://raw.githubusercontent.com/asinen/S357/master/bityuan
wget https://raw.githubusercontent.com/asinen/S357/master/bityuan.lite.toml
wget https://raw.githubusercontent.com/asinen/S357/master/bty33.conf
chmod 777 bityuan
chmod 777 bityuan.lite.toml
chmod 777 bty33.conf

cp bty33.conf /etc/supervisor/conf.d/bty33.conf
supervisorctl reload
supervisorctl start bityuan
sleep 15
./chain33-cli net info
