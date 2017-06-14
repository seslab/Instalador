#!/usr/bin/env bash

cd /home/
pip install numpy
apt-get install python-matplotlib
pip install pyserial
apt-get install python python-tk idle python-pmw python-imaging
git clone https://github.com/javiercr28/SerialKepco
pip install adafruit-ads1x15
apt-get install -y python-smbus
apt-get install -y i2c-tools
apt-get install git build-essential python-dev
pip -- upgrade libusb1
groupadd usbtmc
usermode -a -G usbtmc seslab

chmod 777 /dev/ttyUSB0
chmod 777 /dev/ttyUSB1

mv /home/SerialKepco/button.py /usr/local/lib/python2.7/dist-packages
mv /home/SerialKepco/graphics.py /usr/local/lib/python2.7/dist-packages
mv /home/SerialKepco/graphics.py /usr/local/lib/python2.7/dist-packages
mv /home/SerialKepco/graphics.py /usr/local/lib/python2.7/dist-packages
mv /home/SerialKepco/graphics.py /usr/local/lib/python2.7/dist-packages

python /home/SerialKepco/setup.py install
python /home/SerialKepco/setup2.py install
python /home/SerialKepco/setup3.py install


