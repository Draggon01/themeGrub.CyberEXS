#!/bin/bash

set -e

echo "=============================="
echo " Refreshing GRUB Theme"
echo "=============================="
./copy.sh

echo
echo "=============================="
echo " Generating ISO"
echo "=============================="
./generate_iso.sh

echo
echo "=============================="
echo " Starting Virtual Machine"
echo "=============================="
./start_vm.sh