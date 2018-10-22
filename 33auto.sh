doctl compute ssh-key import at --public-key-file ~/.ssh/id_rsa.pub
doctl compute droplet create 1 2 3 4 5 --size s-1vcpu-2gb --image ubuntu-18-04-x64 --region nyc1 --ssh-keys 60:f1:4e:88:51:d2:95:29:36:41:16:ab:85:4c:ae:9c
doctl compute droplet create 6 7 8 9 10 --size s-1vcpu-2gb --image ubuntu-18-04-x64 --region nyc1 --ssh-keys 60:f1:4e:88:51:d2:95:29:36:41:16:ab:85:4c:ae:9c
