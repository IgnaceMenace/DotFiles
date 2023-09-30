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
-y

## Install usefull light packages
sudo dnf install \
vim \
toolbox \
htop \
asciiquarium \
cmatrix \
bmon \
npm \
helvum \
blueman \
network-manager-applet \
-y

## Python development
sudo dnf install \
pip \
conda \
-y

## Install sway and associated packages
sudo dnf install \
sway \
foot \
grim \
slurp \
waybar \
fuzzel \
mako \
gammastep \
firefox \
light \
NetworkManager-tui \
wl-clipboard \
pavucontrol \
imv \
-y

# Install policy kit for any DE
sudo dnf install lxpolkit -y
# or
# sudo dnf install polkit-kde -y

## Xorg fallback
# sudo dnf install \
# i3 \
# xset \
# xrandr \
# xinit \
# dmenu \
# -y

## A rust alternative is available
sudo dnf install \
neovim \
tmux \
-y

## Rust Alternatives work in progress
curl -sS https://starship.rs/install.sh | sh

sudo dnf copr enable varlad/zellij -y
sudo dnf install zellij -y

sudo dnf copr enable varlad/helix -y
sudo dnf install helix -y

sudo dnf install python-lsp-server -y
# or pip install python-lsp-server

# sudo dnf install alacritty -y

## Rust development
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rust-analyzer
sudo ln -s $(rustup which rust-analyzer ) /usr/local/bin/rust-analyzer

## Not using anymore
# sudo dnf install \
# zsh \
# mc \
# wine \
# asciidoctor \
# -y

## GNOME tools
# sudo dnf install \
# gnome-shell-extension-pop-shell \
# xprop \
# gnome-tweaks \
# gnome-calculator \
# nautilus \
# -y

## Remove software we won't use or need to reinstall differently
sudo dnf remove \
libreoffice-writer \
libreoffice-calc \
libreoffice-impress \
wofi \
gnome-boxes
-y


## Install better alternative to removed software
sudo dnf install \
virt-manager \
-y

# END DNF

# PIP

## Useful tools with pip
pip install tmuxp
pip install neovim

# END PIP

# Flatpaks
# *Used when not part of the base system and requires a lot of dependencies but doesn't need performance*

# Install Flatpak
sudo dnf install flatpak -y

# Enable flathub repo
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Give flatpaks access to GTK theme
sudo flatpak override --filesystem=xdg-config/gtk-4.0

# Install some flatpak
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub org.qbittorrent.qBittorrent -y
flatpak install flathub com.usebottles.bottles -y
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y

# End Flatpaks

# Enable network manager
sudo systemctl enable NetworkManager

# ZSH
# *Deprecated I'm back with bash since I don't need ZSH

# Install powerlevel10k (I'm using Starship now)
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Make Zsh default shell
# sudo chsh -s /bin/zsh $USER

# END ZSH

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
sudo sed -i '9i\fastestmirror=true' /etc/dnf/dnf.conf
sudo sed -i '10i\max_parrallel_downloads=10' /etc/dnf/dnf.conf
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

# Install Joplin the recommended way
#wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# Install belgian eid software
cd
cd Downloads/
wget https://eid.belgium.be/sites/default/files/software/eid-archive-fedora-2021-1.noarch.rpm
sudo dnf install eid-archive-fedora-2021-1.noarch.rpm -y
sudo dnf install eid-viewer -y
sudo dnf install eid-mw -y
cd

# Install JetBrains patched fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip
unzip JetBrainsMono.zip -d JetBrainsMono/
sudo mv JetBrainsMono /usr/share/fonts/JetBrainsMono

# Move the configuration files
rsync -a Pictures/Wallpapers ~/Pictures
rm -rf Pictures/Wallpapers
rm -rf .git
rm JetBrainsMono.zip
rm colorChart.html
rm README.md
rm setupFedW.sh
cd ..
rsync -a DotFiles/ ~
echo reboot to apply all changes
