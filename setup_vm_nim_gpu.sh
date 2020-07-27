#!/usr/bin/env bash
sudo apt-get -y update       
sudo apt-get -y upgrade  
sudo apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev leafpad git xauth unzip

#latest beta-miner
wget https://github.com/tomkha/nq-miner/releases/download/0.99.7/nq-miner-0.99.7.zip
unzip nq-miner-0.99.7.zip
cd nq-miner-0.99.7

pool_address1="${pool_address1}"

sudo timeout 4320m ./miner -a "$wallet1" --pool $pool_address1 -t "cuda"
--volatile --threads 2 --cache 6 --memory-tradeoff 192