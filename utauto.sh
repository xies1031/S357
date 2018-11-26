doctl compute ssh-key import at --public-key-file ~/.ssh/id_rsa.pub
doctl compute droplet create 1 2 3 4 5 --size s-3vcpu-1gb --image ubuntu-16-04-x64 --region nyc1 --ssh-keys de:79:e5:33:79:b1:f0:fb:17:84:fb:67:6e:a3:e4:aa
doctl compute droplet create 6 7 8 9 10 --size s-3vcpu-1gb --image ubuntu-16-04-x64 --region nyc1 --ssh-keys de:79:e5:33:79:b1:f0:fb:17:84:fb:67:6e:a3:e4:aa
