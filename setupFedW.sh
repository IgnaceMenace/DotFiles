#!/bin/bash

# DNF
## *Used for lightwheight packages and member of base system*

## Base Install
sudo dnf install \
util-linux-user \
NetworkManager \
git \
btop \
neofetch \
nmap \
ranger \
rsync \
python \
toolbox \
htop \
asciiquarium \
cmatrix \
bmon \
helvum \
dnf5 \
-y

sudo dnf copr enable varlad/zellij -y
sudo dnf install zellij -y

#sudo dnf copr enable varlad/helix -y
sudo dnf install helix -y

## Rust development
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rust-analyzer
sudo ln -s $(rustup which rust-analyzer ) /usr/local/bin/rust-analyzer

## Python development
sudo dnf install \
pip \
conda \
python-lsp-server \
-y
# or pip install python-lsp-server

## Remove software we won't use or need to reinstall differently
sudo dnf remove \
libreoffice-writer \
libreoffice-calc \
libreoffice-impress \
wofi \
gnome-boxes \
rhythmbox \
-y


## Install better alternative to removed software
sudo dnf install \
virt-manager \
gnome-music \
-y

# Install Flatpak
sudo dnf install flatpak -y

# Enable flathub repo
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Give flatpaks access to GTK theme
#sudo flatpak override --filesystem=xdg-config/gtk-4.0

# Install some flatpak
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub org.qbittorrent.qBittorrent -y
#flatpak install flathub com.usebottles.bottles -y
flatpak install flathub org.videolan.VLC -y

# End Flatpaks

# Enable network manager
sudo systemctl enable NetworkManager

# OS Tweak
# *Improve performance or add newer software or better experience

## Rawhide newest kernel with no debug flag
# sudo dnf config-manager --add-repo=http://dl.fedoraproject.org/pub/alt/rawhide-kernel-nodebug/fedora-rawhide-kernel-nodebug.repo
# sudo dnf upgrade

## Rpm Fusion (free and non-free)
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

## Multimedia codecs 
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y
sudo dnf install lame\* --exclude=lame-devel -y
sudo dnf group upgrade --with-optional Multimedia -y

# DNF tweak
sudo su
echo 'fastestmirror=true' >> /etc/dnf/dnf.conf
echo 'max_parrallel_downloads=10 ' >> /etc/dnf/dnf.conf
exit

sudo dnf clean all

# Firmware update
sudo fwupdmgr refresh
sudo fwupdmgr get-updates
sudo fwupdmgr update

# END OS Tweak

# Install codium
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo
sudo dnf install codium -y

# Install belgian eid software
#Not always available when new version is out so better compile it
#cd
#cd Downloads/
#wget https://eid.belgium.be/sites/default/files/software/eid-archive-fedora-2021-1.noarch.rpm
#sudo dnf install eid-archive-fedora-2021-1.noarch.rpm -y
#sudo dnf install eid-viewer -y
#sudo dnf install eid-mw -y
#cd

# Docker development toolset
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine \
                  -y
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo groupadd docker
sudo usermod -aG docker $USER
# End Docker

rm README.md
rm setupFedW.sh
cd ..
rsync -a DotFiles/ ~
echo reboot to apply all changes
