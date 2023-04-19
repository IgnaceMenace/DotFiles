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
# Joplin
In `Tools/Options/General`
- `Path` write `/bin/flatpak-spawn`
- `Arguments` write `--host /usr/bin/foot vim`
# Sway Window Manager
![Demo](https://user-images.githubusercontent.com/74070019/233034065-1ad2bc2c-5872-418a-b565-d71e7d5cb743.png)

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
## Dependencies
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
- Ranger -> Joshuto [X] (p)
- Waybar -> Eww [V] (f)
- Linux -> RedoxOS [X]
- Neofetch -> Macchina [X]
- NeoVim -> Helix [V]

[x] = WIP

[V] = Ready to use

() -> p = better performance, l = lighter, f = more functionalities

Most of those programms give better fonctionalities or performance than the previous

Most of them are also WIP

# Road map
## Important  
- Oxidize the alternating layout
- Wayland based policy kit to be free from xwayland 
- Remove old useless config
## Not very important
- Fuzzel based Widget for (Bluetooth, WiFi, Output/Input, light/dark mode, ...)
  - Checkout my QuickMenu repo
- Alpine or Arch based config for a fast to deploy, minimal yet useable Desktop
- Hyprland config
- Silverblue image based on OCI maybe

# Personal thoughts
- Every software sucks because most of it depends on a lot of dependencies themselves depending on other, etc
- Using and getting used to a software shouldn't be a loss of time
- Efficient software are hard to find
- You should always use well maintained software since most of the time you don't really know what the software is doing itself
- Minimalisme helps building less buggy, faster, easier to understand, less memory hungry and easier to maintain software
- Rust helps building memory safe software

*Therefore, best software are minimalist and build in rust*
