#doctl compute ssh-key import at --public-key-file ~/.ssh/id_rsa.pub
#doctl compute droplet create 1 2 3 4 5 6 7 8 9 --size s-3vcpu-1gb --image ubuntu-18-04-x64 --region nyc1 --ssh-keys 15:f0:48:00:04:7f:25:a4:ed:86:1d:e5:b5:34:33:7d
#doctl compute droplet create 10 --size s-1vcpu-1gb --image ubuntu-18-04-x64 --region nyc1 --ssh-keys 15:f0:48:00:04:7f:25:a4:ed:86:1d:e5:b5:34:33:7d
#sleep 60
#doctl compute ssh root@1
#curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
#logout
#sleep 1
#doctl compute ssh root@2
#curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
#logout
#sleep 1
#doctl compute ssh root@3 -o stricthostkeychecking=no
#expect "Enter passphrase for key '/Users/asine/.ssh/id_rsa':"
#send "jayjay\r"
#curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
#send "exit"
#expect eof
doctl compute ssh root@4 -o stricthostkeychecking=no <<EOF
expect "Enter passphrase for key '/Users/asine/.ssh/id_rsa':"
send "jayjay\r"
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
exit
EOF
doctl compute ssh -o stricthostkeychecking=no root@5 <<EOF
expect "Enter passphrase for key '/Users/asine/.ssh/id_rsa':"
send "jayjay\r"
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
exit
EOF
doctl compute ssh root@6 -o stricthostkeychecking=no <<EOF
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
exit
EOF
doctl compute ssh root@7 -o stricthostkeychecking=no <<EOF
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
exit
EOF
doctl compute ssh root@8 -o stricthostkeychecking=no <<EOF
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
exit
EOF
doctl compute ssh root@9 <<EOF
curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/utinstall.sh | sh
exit
EOF
