apt-get update
sudo apt install git build-essential gcc g++ cmake libuv1-dev libmicrohttpd-dev openssl -y
sudo apt-get install libssl-dev -y
git clone https://github.com/UlordChain/ulordrig.git
cd ulordrig
mkdir build
cd build
cmake ..
make
./ulordrig -o stratum+tcp://wk.ulord.iccob.com:3386 -u UjKgT1pUcT6xw2if9nDxXy1ZXZJYbYV75q.at -p asine777 -t 2 -B
