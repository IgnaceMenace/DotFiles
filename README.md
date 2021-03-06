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
## NixOS
wip
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

You should probably adapt the keyboard Input to your own setup
The configuration require multiple dependencies
- Fuzzel
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
- Mako
  - Notification daemon

The sway config can be run without Waybar if you comment the code that call it
and uncomment the code for swaybar which is the built in bar
There is a python script to automatically alternate the tiling layout in the config file.
It's just a fork.
The limitations of this script are annoying. I can't stack all the windows as I'm used to do.
Thats why I can easily disable it.

## Waybar
- JetBrains mono Fonts
# Color chart
The color chart html file contain all the colors I usually use
# Road map
- A NixOS config file
- Touchpad configuration with libinput-gestures

**Keep in mind that it's better to reduce the number of dependencies**
- *To prevent the usage of unmaintained code*
- *To keep a minimal installation*
- *Every lighter options with similar capabilities will be prefered*
# Personal thoughts
- I tried the nnn file manager and can't geet used to it.
- I'll keep an eye on Helix which is a nice contender to Neovim
- Eww widgets are looking good and powerfull
- Every software sucks
- The personal script for Sway isn't the best thing (why I might switch to Qtile)
- Powerlevel10k creates tons of glitches when you resize a terminal window (might switch to starship)
