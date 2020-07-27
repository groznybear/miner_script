#!/usr/bin/env bash
sudo apt-get -y update       
sudo apt-get -y upgrade  
sudo apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev leafpad git xauth unzip

#latest miner
mkdir noncerpro
cd noncerpro
wget https://github.com/NoncerPro/noncerpro-nimiq-cuda/releases/download/v3.3.1/noncerpro-cuda-linux-3.3.1.tar.gz
tar -xf noncerpro-cuda-linux-3.3.1.tar.gz

pool_address1="${pool_address1}"

sudo timeout 4320m ./noncerpro --address="$wallet1" --server=us.nimpool.io --port=8444 --threads 4 --batchsize=50