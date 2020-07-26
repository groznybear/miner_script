#!/usr/bin/env bash
sudo apt-get -y update       
sudo apt-get -y upgrade  
sudo apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev leafpad git xauth unzip

#latest beta-miner
wget https://github.com/Beeppool/miner/releases/download/0.6.0/beepminer-0.6.0.zip
unzip beepminer-0.6.0.zip
cd beepminer-0.6.0

pool_address1="${pool_address1}"

for i in `seq 1 4`;
do
    sudo timeout 1000m ./miner --wallet-address="$wallet1" --pool=$pool_address1 --deviceLabel=$miner_id
done