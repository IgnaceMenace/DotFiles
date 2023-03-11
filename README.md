# Dotfiles
Just a repository with all my linux dotfiles to help me reconfigure each time I reinstall a linux distro.
Take whatever you want, it's free.
# Installation
## Fedora Workstation
- Clone the repository
- Navigate to the cloned repository
- Give the installation script permission to be executed
- Execute the script
```
git clone --recurse-submodule https://github.com/IgnaceMenace/DotFiles
cd DotFiles
sudo chmod +x setupFedW.sh
bash setupFedW.sh
```
It will install everything and place the configuration files in the correct directories.

# GTK theme
To let your flatpaks access the gtk theme you should run this command
`flatpak override --filesystem=xdg-config/gtk-4.0`
# Tmux
If tmuxinator doesn't work, you should replace it with TmuxP but the configuration is very personal.
# Midnight Commander
It's pretty powerfull but knowing all of its feature is a loss of time so I haven't realy configured it.
Learn more [here](https://klimer.eu/2015/05/01/use-midnight-commander-like-a-pro/)
# ZSH
Make it default with `sudo chsh -s /bin/zsh $USER`
Install powerlevel10K theme with 
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```
The powerlevel10k themes are divided in 2:
- .p10k.zsh is minimalist and never glitch
- .p10k.zsh.old is full featured and beautiful but you always have to Ctrl+l to clear after a resize
# Joplin
In `Tools/Options/General`
- `Path` write `/bin/flatpak-spawn`
- `Arguments` write `--host /usr/bin/foot vim`
# Sway Window Manager
![20220529_23h33m54s_grim](https://user-images.githubusercontent.com/74070019/170892201-65f62493-ed11-4c46-a08b-77e637be05cb.png)
# Foot
To make it work properly when using it for remote access, 
you should install foot-terminfo on the host machine/container
```
sudo dnf install foot-terminfo
```
# Fuzzel
Developed by the same dev as Foot, it's the replacent for wofi.
No configuration file, you just give it arguments when calling it
## Sway
There is a python script to automatically alternate the tiling layout in the config file.
It's just a fork.
The limitations of this script are annoying. I can't stack all the windows as I'm used to do.
Thats why I can easily disable it.
Take a look at Persway !

## Waybar
- JetBrains mono Fonts
# Color chart
The color chart html file contain all the colors I usually use

# X11
I need a fallback option for Xorg since some features are eather not available on Wayland or not working fine on Wlroots.
Previously I was using Gnome as a fallback but to maintain a lightweight system I decided to use I3 as a fallback.
The config for I3 is very minimal and WIP since I don't want to spend too much time on a fallback mode.
## Dependecies
- i3
- xrandr
- xset
- i3-bar
- gnome-terminal
- dmenu

# Bleeding edge and testing
*If you want to test next releases of fedora, use rawhide, but at your own risk*
```
sudo dnf upgrade --refresh
sudo dnf install dnf-plugin-system-upgrade
sudo dnf system-upgrade download --releasever=rawhide
```
rawhide or any other release server e.g. 38

# Oxidizing
*I'm currently exploring the Rust workd and would like to replace my most used software with Rust based software*
*I sincerly believe in Rust and most of the projects related*
- Foot -> Alacritty [V] (p)
- Powerlevel10k -> Starship [V] (p)
- Bash -> Ion Shell [X] (p,l)/ Nushell [X] (f)
- Gnu Utils -> Uutils [X] (p)
- Ranger -> Hunter [X] (p)
- Waybar -> Eww [V] (f)
- Linux -> RedoxOS [X]
- Neofetch -> Macchina [X]

[x] = WIP

[V] = Ready to use

() -> p = better performance, l = lighter, f = more functionalities

Most of those programms give better fonctionalities or performance than the previous

Most of them are also WIP

# Road map
## Important
- Touchpad configuration with sway 1.8
```
bindgesture swipe:right workspace prev
bindgesture swipe:left workspace next
```
- Switch to full systemD management
  - I have no real reasons to do so but consistency 
  - Systemd-boot instead of Grub
  - systemd-networkd instead of network manager
  
- Oxidize the alternating layout
- Create a master-stack layout
- Wayland based policy kit to be free from xwayland 
- Remove old useless config
- Move away from Gnome software
  - even though I like the DE, Nautilus crash when handling large ammount of data and Gnome Software is just no working some times
  - I'll switch to Xfce tools or Cosmic tools once it will be released
## Not very important
- Fuzzel based Widget for (Bluetooth, WiFi, Output/Input, light/dark mode, ...)
  - Checkout my QuickMenu repo
- BTRFS Snapshots whith Snapper and Timeshift
  - Not very usefull on fedora since my system has never broke
- Alpine or Arch based config for a fast to deploy, minimal yet useable Desktop

# Personal thoughts
- Every software sucks because most of it depends on a lot of dependencies themselves depending on other, etc
- Using and getting used to a software shouldn't be a loss of time
- Efficient software are hard to find
- You should always use well maintained software since most of the time you don't really know what the software is doing itself
- Minimalisme helps building less buggy, faster, easier to understand, less memory hungry and easier to maintain software
- Rust helps building memory safe software

*Therefore, decent software are minimalist and build in rust, the rest isn't good IMO*  
