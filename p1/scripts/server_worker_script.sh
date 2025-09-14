#!/bin/bash
set -x

apt-get update && apt-get upgrade -y
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="agent --server https://192.168.56.110:6443 -token 12345 -i 192.168.56.111" sh -s -
echo "you are in the SeverWorker" > file