# DNF tweak for performance
sudo sed -i '9i\fastestmirror=true' /etc/dnf/dnf.conf
sudo sed -i '10i\max_parrallel_downloads=10' /etc/dnf/dnf.conf
sudo dnf clean all

# Update system
sudo dnf update -y

# Firmware update
sudo fwupdmgr refresh
sudo fwupdmgr get-updates
sudo fwupdmgr update

# Add repositories
sudo dnf install \
https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm \
-y
sudo dnf config-manager \
--add-repo \
https://download.docker.com/linux/fedora/docker-ce.repo

# Remove some software
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
foot \
cockpit-pcp \
dnf-plugins-core \
docker-ce \
docker-ce-cli \
containerd.io \
docker-compose-plugin \
-y 

# Enable services
sudo systemctl enable NetworkManager
sudo systemctl enable docker

# Make Zsh default shell
sudo chsh -s /bin/zsh $USER

# Install from different sources

## Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
## Install some utilities from pip
pip install tmuxp
pip install neovim
## Install JetBrains patched fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
unzip JetBrainsMono.zip -d JetBrainsMono/
sudo mv JetBrainsMono /usr/share/fonts/JetBrainsMono

# Sync configuration files (optional)
rm -rf Pictures/Wallpapers
rm -rf .git
rm JetBrainsMono.zip
rm colorChart.html
rm README.md
rm setupFedW.sh
rm setupFedS.sh
cd ..
rsync -a DotFiles/ ~
