#!/bin/bash
python3 banner.py

RED='\033[0;31m'
echo "$(tput setaf 1)1.Kali Linux"
echo "2.Parrot Linux"
echo "3.Alpine Linux"
echo "4.Arch Linux"
echo "5.Debian Linux"
echo "6.Fedora35 Linux"
echo "7.Manjaro Linux"
echo "8.Open SUSC Linux"
echo "9.Ubuntu Linux"
echo "10.Void Linux"
echo "11.Backbox Linux"
echo "12.CentOs Linux"
read -p "Enter Your Linux:" Linux

if [ "$Linux" = 1 ]
then 
    wget https://raw.githubusercontent.com/MasterDevX/KaliTermux/master/InstallKali.sh    
    chmod +x *
    bash InstallKali.sh
    cat  login/Kali.txt >> data/data/com.termux/files/usr/etc/bash.bashrc
elif [ "$Linux" = 2 ]
then
    wget https://github.com/risecid/parrot-in-termux/blob/main/parrot.sh
    chmod +x parrot.sh
    bash parrot.sh -y
    cat  login/Parrot.txt >> data/data/com.termux/files/usr/etc/bash.bashrc
elif [ "$Linux" = 3 ]
then
    proot-distro install  alpine
    cat login/Alpine.txt >> data/data/com.termux/files/usr/etc/bash.bashrc
    
elif [ "$Linux" = 4 ]
then
    proot-distro install archlinux
    cat login/Arch.txt >> data/data/com.termux/files/usr/etc/bash.bashrc

elif [ "$Linux" = 5 ]
then
    proot-distro install   debian 
    cat login/Debian.txt >> data/data/com.termux/files/usr/etc/bash.bashrc

elif [ "$Linux" = 6 ]
then
    proot-distro install fedora
    cat login/Fedora35.txt >> data/data/com.termux/files/usr/etc/bash.bashrc

elif [ "$Linux" = 7 ]
then
    proot-distro install  manjaro-aarch64 
    cat login/Manjaro.txt >> data/data/com.termux/files/usr/etc/bash.bashrc

elif [ "$Linux" = 8 ]
then
    proot-distro install opensuse 
    cat login/OpenSUSC.txt >> data/data/com.termux/files/usr/etc/bash.bashrc

elif [ "$Linux" = 9 ]
then
    proot-distro install  ubuntu 
    cat login/Ubuntu.txt >> data/data/com.termux/files/usr/etc/bash.bashrc
elif [ "$Linux" = 10 ]
then
    proot-distro install  void
    cat login/Void.txt >> data/data/com.termux/files/usr/etc/bash.bashrc
elif [ "$Linux" = 11 ]
then
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/BackBox/backbox.sh 
    chmod +x *
    bash backbox.sh 
    chmod +x *
    cat login/Backbox.txt >> data/data/com.termux/files/usr/etc/bash.bashrc
elif [ "$Linux" = 12 ]
then 
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/CentOS/centos.sh
    chmod +x *
    bash centos.sh
    chmod +x *
    cat  login/CentOs.txt >> data/data/com.termux/files/usr/etc/bash.bashrc
else
    echo "exiting........."
   sleep 3
    clear
fi
