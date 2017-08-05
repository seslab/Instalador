#!/usr/bin/env bash

mkdir /home/SESLab
cd /home/SESLab
pip install numpy
apt-get install python-matplotlib
apt-get install python-scipy
pip install pyserial
pip install PyUSB
apt-get install python python-tk idle python-pmw python-imaging
git clone https://github.com/seslab/MIPVC.git
https://github.com/python-ivi/python-usbtmc.git

pip install adafruit-ads1x15
apt-get install -y python-smbus
apt-get install -y i2c-tools
apt-get install git build-essential python-dev
pip -- upgrade libusb1
groupadd usbtmc
usermode -a -G usbtmc seslab

chmod 777 /dev/ttyUSB0
chmod 777 /dev/ttyUSB1

mv /home/SESLab/MIPVC/button.py /usr/local/lib/python2.7/dist-packages
mv /home/SESLab/MIPVC/graphics.py /usr/local/lib/python2.7/dist-packages
mv /home/SESLab/MIPVC/usbtmc.rules /etc/udev/rules.d
mv /home/SESLab/MIPVC/usbtmc.rules.save /etc/udev/rules.d
mv /home/SESLab/MIPVC/MIPVC/MIPVC.desktop /home/pi/Desktop

cd /home/SESLab/MIPVC
python setup.py install
python setup2.py install
python setup3.py install
cd /home/SESLab/python-usbtmc
python setup.py install
