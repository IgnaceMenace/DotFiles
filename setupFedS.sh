# Install dependencies and usefull light pckages
sudo dnf install \
zsh \
neovim \
ranger \
vim \
util-linux-user \
NetworkManager \
NetworkManager-tui \
mc \
toolbox \
pip \
conda \
htop \
btop \
neofetch \
asciiquarium \
cmatrix \
git \
nmap \
tmux \
-y 

# Enable network manager (!! Need to be verified!!)
sudo systemctl enable NetworkManager

# Enable rpm Fusion (free and non-free)
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Make Zsh default shell
sudo chsh -s /bin/zsh $USER

# Install tmuxp
pip install tmuxp

# Install Neovim python extension
pip install neovim

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

echo work in progress server installation (Nextcloud, gitlab)
