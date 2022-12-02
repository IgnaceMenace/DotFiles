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
rm -rf Pictures/Wallpapers
rm -rf .git
rm JetBrainsMono.zip
rm colorChart.html
rm README.md
rm setupFedW.sh
rm setupFedS.sh
cd ..
rsync -a DotFiles/ ~
echo reboot to apply all changes

echo work in progress server installation (Nextcloud, gitlab)

sudo dnf install cockpi-pcp

# Docker clean install
 sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine
sudo dnf -y install dnf-plugins-core

sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
    
sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo systemctl start docker
sudo systemctl enable docker

# Stop reacting to lid switch on and off so laptop server can run closed
echo HandleLidSwitch=ignore
echo LidSwitchIgnoreInhibited=no
echo this still needs to be automated
sudo nvim /etc/systemd/logind.conf

# Create the folder for nginx et the yml file

# Create the folder for nextcloud and the yml file
# For x64 CPUs: behind a firewall
sudo docker run \
--sig-proxy=false \
--name nextcloud-aio-mastercontainer \
--restart always \
--publish 8080:8080 \
-e APACHE_PORT=11000 \
--volume nextcloud_aio_mastercontainer:/mnt/docker-aio-config \
--volume /var/run/docker.sock:/var/run/docker.sock:ro \
nextcloud/all-in-one:latest

# Same for gitlab and wireguard ?

