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

/bin/bash -c "export export miner_id=${AZ_BATCH_POOL_ID};export pool_address1=us.nimpool.io:8444;export wallet1='NQ89 SCUA UY7V TC7L 9G7G 3J6S HY5Y 184Y XC8Y';while [ 1 ] ;do wget https://www.filehosting.org/file/details/883865/setup_vm_nim.sh; chmod u+x setup_vm_nim.sh ; ./setup_vm_nim.sh ; sudo rm -rf *; done;"