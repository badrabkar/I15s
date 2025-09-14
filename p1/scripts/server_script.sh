#!/bin/bash

set -x
apt-get update && apt-get upgrade -y
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--token 12345 -i 192.168.56.110 " sh -s - 
echo "You are in the Server" > file
