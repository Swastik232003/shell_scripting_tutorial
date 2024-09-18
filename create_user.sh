#!/bin/bash
read -p "enter username" username
echo "you enter the $username"
sudo useradd -m $username
echo "new user added"