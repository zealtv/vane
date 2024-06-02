#!/bin/bash

# todo get samples from somewhere - ftp? scp? curl? wget?

cd /home/pi
# todo get samples.zip from somewhere - ftp? scp? curl? wget?

mkdir /home/pi/vane-temp
cd /home/pi/vane-temp
cp /home/pi/vane/samples/README.md ./
cp /home/pi/vane/samples/.gitignore ./
rm -rf /home/pi/vane/samples
mkdir /home/pi/vane/samples
unzip /home/pi/samples.zip -d /home/pi/vane/samples
rm -r /home/pi/vane/samples/__MACOSX
mv /home/pi/vane-temp/README.md /home/pi/vane/samples/
mv /home/pi/vane-temp/.gitignore /home/pi/vane/samples/
rm -r /home/pi/vane-temp
#set permissions
cd /home/pi/vane/samples
chown -R pi ./

exit