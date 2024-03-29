#!/bin/bash

# 设置交换文件的大小
SWAP_SIZE="4G"

# 创建交换文件
sudo fallocate -l $SWAP_SIZE /swapfile

# 设置适当的权限
sudo chmod 600 /swapfile

# 设置交换空间
sudo mkswap /swapfile

# 启用交换文件
sudo swapon /swapfile

# 将交换文件添加到 fstab 以便在启动时自动挂载
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

echo "Swap file created and configured successfully."