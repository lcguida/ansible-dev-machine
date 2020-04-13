#!/bin/bash

set -e

if [ "$EUID" -ne 0 ]
then
  echo "Please, run this script as root (sudo)"
  exit 1
fi

echo "Installing python and ansible"
pacman -Sy python ansible

echo "Install ansible requirements"
ansible-galaxy install -r requirements.yml