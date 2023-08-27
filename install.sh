#!/bin/bash
source /home/waybot/.bashrc
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade
sudo apt-get install libssl-dev libusb-1.0-0-dev libudev-dev pkg-config libgtk-3-dev
sudo apt-get install git wget cmake build-essential
sudo apt-get install libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev at
sudo apt install curl
sudo mkdir -p /etc/apt/keyrings
curl -sSf https://librealsense.intel.com/Debian/librealsense.pgp | sudo tee /etc/apt/keyrings/librealsense.pgp > /dev/null
echo "deb [signed-by=/etc/apt/keyrings/librealsense.pgp] https://librealsense.intel.com/Debian/apt-repo `lsb_release -cs` main" | \
sudo tee /etc/apt/sources.list.d/librealsense.list
sudo apt-get update
sudo apt-get install librealsense2-dkms
sudo apt-get install librealsense2-utils
sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install anydesk
echo "waybot123" | sudo anydesk --set-password
sudo apt install python3-pip
pip3 install pyrealsense2
pip3 install pyserial
sudo apt-get install python3-opencv
sudo apt install qtwebengine5-dev
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
pip3 install segmentation-models-pytorch
pip3 install PyQtWebEngine
pip3 install ultralytics
pip3 install PyQt5
anydesk --get-id
pip3 install numpy
sudo apt install libzbar0
pip3 install pyzbar