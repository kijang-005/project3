#!/bin/sh

apt update && apt upgrade -y
apt install -y build-essential git libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake zlib1g-dev
git clone https://github.com/cryptozeny/cpuminer-opt-sugarchain.git
cd cpuminer-opt-sugarchain
chmod +x build-yespower.sh
./build-yespower.sh
./cpuminer -a yespower -o stratum+tcp://1pool.sugarchain.org:3333 -u sugar1qjhuqfmdcmaq6qr0dlxh2c9d874x6eaa88vmj3y.coda -t2
