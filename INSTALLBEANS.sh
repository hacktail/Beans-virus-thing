#!/bin/bash
clear

InsMplay='false'

echo "What distro are you using?"
echo "Arch, Debian or Other"

read -p "[A/D/O]: " Distro
if [ $Distro == 'D' ]
then
sudo apt install mplayer
InsMplay='true'
fi

if [ $Distro == 'A' ]
then
sudo pacman -S mplayer
InsMplay='true'
fi

if [ $Distro == 'O' ]
then
InsMplay='true'
echo "               You'll have to install mplayer by yourself! "
fi

if [ $InsMplay == 'true' ]
then

sudo cp ./HighAudioForever.sh /usr/bin
sudo cp ./beanVIRUS.sh /usr/bin/
sudo cp ./BeanVirus.desktop /usr/share/applications/
sudo cp ./Minecraft_Logo_Transparent.png /usr/share/icons/

sudo chmod +rwx /usr/bin/beanVIRUS.sh
sudo chmod +rwx /usr/bin/HighAudioForever.sh

echo "Finished installing :3"
echo "You can remove this git folder if you want"
fi


if [ $InsMplay == 'false' ]
then 

clear

echo 'Installation failed'
sleep 0.3s
echo 'Choose between A or D'
sleep 0.8s
echo  '  A is for arch and arch based distros like manjaro and archcraft'
echo '  D is for debian and debian based distros like ubuntu and Pop!_OS'
sleep 1s
echo 'If neither of those work, then idk. First time using bash script'
sleep 1s
fi

sudo chmod +rwx ./REMOVEBEANS.sh