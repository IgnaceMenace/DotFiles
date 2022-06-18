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
git clone https://github.com/IgnaceMenace/DotFiles
cd DotFiles
sudo chmod +x setupFedW.sh
bash setupFedW.sh
```
# Neovim
I want to change the configuration to write it in Lua and use the built in lsp client.
I want to configure it for python, markdown and maybe rust if i start learning it. 
Maybe I will just switch to LuaVim or Lvim or just inspire myself.
# GTK theme
To let your flatpaks access the gtk theme you should run this command
`flatpak override --filesystem=xdg-config/gtk-4.0`
# Tmux
If tmuxinator doesn't work, you should replace it with TmuxP but the configuration is very personal.
# Midnight Commander
It's pretty powerfull but knowing all of its feature is a loss of time so I'm haven't realy configured it.
Learn more [here](https://klimer.eu/2015/05/01/use-midnight-commander-like-a-pro/)
# ZSH
Make it default with `sudo chsh -s /bin/zsh $USER`
Install powerlevel10K theme with 
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```
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

## Sway

You should probably adapt the keyboard Input to your own setup
The configuration require multiple dependencies
- Wofi
  - Can be replaced by Pop Luancher + Onagre
- J4-dmenu
  - Can also be replaced by Pop Luancher + Onagre
- Nautilus
- Alsamixer
- Pulseaudio
  - Pavucontrol (for waybar but not mandatory)
- Grim
- Light
- Wl-clipboard (to copy the output of grim)
- Waybar
  - Can be replaced by SwayBar which is installed with Sway.
  But it has less functionalities
- Swaylock
- Python + os package
- JetBrains Mono Nerd Fonts 
  - Find them [here](https://www.nerdfonts.com/font-downloads)
  - If you want to change glyphs get them [here](https://fontawesome.com/v5/search?s=solid%2Cbrands)
- Alacritty
  - Might be replaced by Foot terminal

The sway config can be run without Waybar if you comment the code that call it
and uncomment the code for swaybar which is the built in bar

## Waybar
- JetBrains mono Fonts
# Color chart
The color chart html file contain all the color I use
# Road map
- Perfect the Qtile configuration
- Python script for specific tiling in sway inspired by the one by nwg_piotr
- Tiling layout menu with wofi if I manage to build a python script for tiling
- Rofi instead of Wofi because wofi is unmiantained
  - Unfortnuately Rofi isn't Wayland native
  - Maybe watch Onagre/PopLauncher  
  - ulauncher works fine but it's a bit slow
- Red light there is a redshift [fork](https://github.com/giucam/redshift) that works on Wayland
  - Still need to see if this is a decent option since it need to be compiled etc it doesnt have a lot of users
- A NixOS config file
- Reduce the number of dependencies
  - j4-dmenu-desktop is needed to launch flatpak but it's another launcher
