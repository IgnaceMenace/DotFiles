# Install dependencies and usefull light pckages
sudo dnf install \
zsh \
neovim \
ranger \
asciiquarium \
cmatrix \
vim \
neofetch \
j4-dmenu-desktop \
sway \
waybar \
wofi \
pavucontrol \
wl-clipboard \
NetworkManager-tui \
light \
mc \
toolbox \
pip \
conda \
htop \
util-linux-user \
-y 

# Enable rpm Fusion (free and non-free)
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
# Install  the multimedia codecs 
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Make Zsh default shell
sudo chsh -s /bin/zsh $USER

# Enable flathub repo
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Give flatpaks access to GTK theme
flatpak override --filesystem=xdg-config/gtk-4.0

# Install tmuxp
pip install tmuxp

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
rsync -a DotFiles/* ~
echo reboot to apply all changes
