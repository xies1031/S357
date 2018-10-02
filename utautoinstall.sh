doctl compute ssh-key import at --public-key-file ~/.ssh/id_rsa.pub
doctl compute droplet create 1 2 3 4 5 6 7 8 9 --size s-3vcpu-1gb --image ubuntu-18-04-x64 --region nyc1 --ssh-keys 15:f0:48:00:04:7f:25:a4:ed:86:1d:e5:b5:34:33:7d
doctl compute droplet create 10 --size s-1vcpu-1gb --image ubuntu-18-04-x64 --region nyc1 --ssh-keys 15:f0:48:00:04:7f:25:a4:ed:86:1d:e5:b5:34:33:7d
sleep 60
doctl compute ssh root@1 -y
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
doctl compute ssh root@2 -y
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
doctl compute ssh root@3 -y
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
doctl compute ssh root@4 -y
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
doctl compute ssh root@5 -y
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
doctl compute ssh root@6 -y
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
doctl compute ssh root@7 -y
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
doctl compute ssh root@8 -y
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
doctl compute ssh root@9 -y
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
