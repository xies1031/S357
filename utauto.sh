doctl compute ssh-key import at --public-key-file ~/.ssh/id_rsa.pub
doctl compute droplet create 1 2 3 4 5 --size s-3vcpu-1gb --image ubuntu-18-04-x64 --region nyc1 --ssh-keys 15:f0:48:00:04:7f:25:a4:ed:86:1d:e5:b5:34:33:7d
doctl compute droplet create 6 7 8 9 10 --size s-3vcpu-1gb --image ubuntu-18-04-x64 --region nyc1 --ssh-keys 15:f0:48:00:04:7f:25:a4:ed:86:1d:e5:b5:34:33:7d
