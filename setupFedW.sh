# Install dependencies and usefull light pckages
sudo dnf install \
sway \
waybar \
zsh \
fuzzel \
neovim \
ranger \
vim \
pavucontrol \
util-linux-user \
wl-clipboard \
NetworkManager \
NetworkManager-tui \
light \
mc \
toolbox \
pip \
conda \
htop \
btop \
neofetch \
asciiquarium \
cmatrix \
mako \
git \
nautilus \
gnome-calculator \
firefox \
nmap \
tmux \
bmon \
wine \
gnome-tweaks \
-y 

# Rust Alternatives work in progress
## Starship
curl -sS https://starship.rs/install.sh | sh
## Zellij
sudo dnf copr enable varlad/zellij -y
sudo dnf install zellij -y
## Helix
sudo dnf copr enable varlad/helix -y
sudo dnf install helix -y
### LSP ofr helix
sudo dnf install python-lsp-server -y
#### or pip install python-lsp-server
## Alacritty
sudo dnf install alacritty -y

# Deprecated installation
# sudo dnf install qbittorrent -y

# DIfferent install

# Remove software we won't use or need to reinstall differently
sudo dnf remove \
libreoffice-writer \
libreoffice-calc \
libreoffice-impress \
-y

# Enable network manager (!! Need to be verified!!)
sudo systemctl enable NetworkManager

# Install policy kit for any DE
sudo dnf install lxpolkit -y

# Install Flatpak
sudo dnf install flatpak -y

# Add rawhide newest kernel with no debug flag
#sudo dnf config-manager --add-repo=http://dl.fedoraproject.org/pub/alt/rawhide-kernel-nodebug/fedora-rawhide-kernel-nodebug.repo
#sudo dnf upgrade

# Enable rpm Fusion (free and non-free)
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# Install  the multimedia codecs 
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Make Zsh default shell
#sudo chsh -s /bin/zsh $USER

# Enable flathub repo
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Give flatpaks access to GTK theme
sudo flatpak override --filesystem=xdg-config/gtk-4.0

# install some flatpak
flatpak install flathub org.libreoffice.LibreOffice
flatpak install flathub org.gimp.GIMP
flatpak install flathub org.qbittorrent.qBittorrent

# Install tmuxp
pip install tmuxp

# Install Neovim python extension
pip install neovim

# Install Pop OS Shell extension for Gnome
sudo dnf install gnome-shell-extension-pop-shell xprop

# Install Joplin the recommended way
#wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# DNF tweak
sudo sed -i '9i\fastestmirror=true' /etc/dnf/dnf.conf
sudo sed -i '10i\max_parrallel_downloads=10' /etc/dnf/dnf.conf
sudo dnf clean all

# Firmware update
sudo fwupdmgr refresh
sudo fwupdmgr get-updates
sudo fwupdmgr update

# Install JetBrains patched fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
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
