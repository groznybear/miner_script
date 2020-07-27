#!/usr/bin/env bash
sudo apt-get -y update       
sudo apt-get -y upgrade  
sudo apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev leafpad git xauth unzip

# cuda
CUDA_REPO_PKG=cuda-repo-ubuntu1604_10.0.130-1_amd64.deb

wget -O /tmp/${CUDA_REPO_PKG} http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/${CUDA_REPO_PKG} 

sudo dpkg -i /tmp/${CUDA_REPO_PKG}

sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub 

rm -f /tmp/${CUDA_REPO_PKG}

sudo apt-get update

sudo apt-get install cuda-drivers

#latest miner
mkdir noncerpro
cd noncerpro
wget https://github.com/NoncerPro/noncerpro-nimiq-cuda/releases/download/v3.3.1/noncerpro-cuda-linux-3.3.1.tar.gz
tar -xf noncerpro-cuda-linux-3.3.1.tar.gz

pool_address1="${pool_address1}"

sudo timeout 4320m ./noncerpro --address="$wallet1" --server=us.nimpool.io --port=8444 --threads 4 --batchsize=50

cd ../
rm -rf noncerpro
rm -f noncerpro-cuda-linux-3.3.1.tar.gz