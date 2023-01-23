#!/bin/bash
echo -e "\033[31mCHECKING INTERNET CONNECTION\033[0m"
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
	sudo dnf -y install figlet toilet
	figlet -cw 200 "YOU'RE ONLINE"
	sleep 5
	figlet -cw 200 "EDIT DNF"
	sleep 10
	sudoedit /etc/dnf/dnf.conf
	#fastestmirror=True
	#max_parallel_downloads=10
	#defaultyes=True
	#deltarpm=true
	sudo dnf -y install dnf-plugin-system-upgrade
	figlet -cw 200 "EDIT READY"
	sleep 10
	sleep 10
	figlet -cw 200 "INSTALL RPM"
	sudo dnf -y autoremove
	sudo dnf clean all
	sudo dnf -y update
	sudo dnf -y install --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
	figlet -cw 200 "RPM READY"
	sleep 10
	figlet -cw 200 "INSTALL FLATHUB"
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	figlet -cw 200 "Flathub READY"
	sleep 10
	figlet -cw 200 "UPDATE CODECS"
	sudo dnf -y groupupdate multimedia sound-and-video
	figlet -cw 200 "CODECS READY"
	sleep 10
	mkgir ~/.ssh && cd /.ssh && ssh-keygen
	figlet -cw 200 "SSH & GIT IS READY"
	sleep 10
	figlet -cw 200 "INSTALL PACKAGES"
	sudo dnf -y install fbreader
	sudo dnf -y install rpi-imager
	sudo dnf -y install liferea
	sudo dnf -y install qbittorrent
	sudo dnf -y install evolution
	sudo dnf -y install unar
	sudo dnf -y install unzip
	sudo dnf -y install vlc
	sudo dnf -y install emacs
	sudo dnf -y install wine 
	sudo dnf -y install pip
	sudo dnf -y install terminator 
	sudo dnf -y install gcc 
	sudo dnf -y install clang 
	sudo dnf -y install cmake 
	sudo dnf -y install gnome-tweaks 
	sudo dnf -y install chrome-gnome-shell
	sudo dnf -y install dnf-plugins-core 
	sudo dnf -y install neofetch 
	sudo dnf -y install util-linux-user 
	sudo dnf -y install snapd
	sudo dnf -y install timeshift
	#sudo dnf -y install sl
	#sudo dnf -y install cmatrix
	sudo dnf -y install ghostwriter
	sudo dnf -y install audacity
	sudo dnf -y install krita
	#sudo dnf -y install dotnet-sdk-6.0
	#sudo dnf -y install aspnetcore-runtime-6.0
	#sudo dnf -y install dotnet-runtime-6.0
	sudo dnf -y install dnf-automatic
	sudo dnf -y install doublecmd-qt
	figlet -cw 200 "PACKAGES READY"
	sleep 10
	figlet -cw 200 "INSTALL SUBLIME"
	# update: sudo dnf install sublime-text
	sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
	sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
	sudo dnf -y install sublime-text
	figlet -cw 200 "SUBLIME READY"
	sleep 10
	figlet -cw 200 "UPDATE SNAP"
	sudo ln -s /var/lib/snapd/snap /snap
	sudo snap refresh
	figlet -cw 200 "SNAP READY"
	sleep 10
	figlet -cw 200 "NOW OPTIMIZATION"
	cat /proc/sys/vm/swappiness
	sudo sh -c "echo 'vm.swappiness=10' >> /etc/sysctl.d/95-sysctl.conf"
	cat /proc/sys/vm/swappiness
	sudo sh -c "echo 'vm.vfs_cache_pressure=50' >> /etc/sysctl.d/96-sysctl.conf"
	figlet -cw 200 "OPTIMIZATION READY"
	sleep 10
	figlet -cw 200 "NOW CLEAN"
	sudo dnf -y remove qt abrt
	sudo dnf -y remove orca
	sudo dnf -y groupremove 'LibreOffice'
	sudo dnf clean all
	sudo dnf -y autoremove
	figlet -cw 200 "CLEAN READY"
	sleep 10
	figlet -cw 200 "SETUP RUSSIAN PACKS"
	sudo dnf -y install langpacks-ru
	sleep 10
	figlet -cw 200 "RUSSIAN LANGUAGE READY"
	sudo systemctl enable dnf-automatic.timer
	alias update="sudo dnf distro-sync && sudo dnf -y upgrade && sudo snap refresh && sudo dracut --force"
	alias reboot="update && reboot"
	alias poweroff="update && poweroff"
	alias clean="sudo dnf clean all && sudo dnf -y autoremove && sudo pkcon refresh force && sudo rm -v -f ~/.cache/thumbnails/*/*.png ~/.thumbnails/*/*.png && sudo rm -v -f ~/.cache/thumbnails/*/*/*.png ~/.thumbnails/*/*/*.png && sudo rm -f /var/lib/dnf/history.sql* && sudo dracut --force"
	figlet -cw 200 "UPDATE & ALIAS IS AUTOMATIC"
	sudo plymouth-set-default-theme details -R
	#sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
	update
	clean
	#sudo dnf install xorg-x11-drv-nvidia akmod-nvidia
	figlet -cw 200 "DRIVERS READY"
	figlet -cw 200 "ALL'RE INSTALLED,SET UP & UPDATE ^_^"
	figlet -cw 200 "AND NOW REBOOT"
	sleep 30
	sudo reboot
else
	echo "Offline"
	sleep 30
fi
