cd /root//chain33
./bityuan-cli seed generate -l 0  > ~/mySeed.txt
echo "bty123456" > ~/myPass
cat ~/mySeed.txt | xargs -I{} ./bityuan-cli seed save -p bty123456 -s "{}"
./bityuan-cli  wallet unlock  -p bty123456 -s wallet -t 0
sleep 15
./bityuan-cli account  list  | grep "airdropaddr" -B 2 | grep addr  -w | cut -d '"' -f 4 > ~/myAirdropAddr
cat ~/myAirdropAddr | xargs -I{} ./bityuan-cli  account dump_key -a {} > ~/myAirdropPriv
cat ~/myAirdropPriv | grep data| cut -d '"' -f 4 | xargs  -I{} echo "account import_key -l ali00001 -k {} "
