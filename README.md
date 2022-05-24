# Dotfiles
Just a repository with all my linux dotfiles to help me reconfigure each time I reinstall a linux distro.
Take whatever you want, it's free.

# Sway Window Manager
## Sway
You should probably adapt the keyboard Input to your own setup
The configuration require multiple dependencies
- Wofi
  - Can be replaced by Krunner
- J4-dmenu
  - Can also be replaced by Krunner 
- Nautilus
- Alsamixer
- Pulseaudio
- Grim
- Waybar
  - Can be replaced by SwayBar which is installed with Sway.
  But it has less functionalities
- Swaylock
- Python + os package
- JetBrains Mono Fonts 
  - [Download](https://www.jetbrains.com/lp/mono/)
  - You can also install the patched one from [here](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono)   
- Alacritty
  - Might be replaced by Foot terminal
## Waybar
- JetBrains mono Fonts

# Road map
- Scripting the installation for Fedora and Arch
- Make the zsh theme works even in Podman container
- Reduce the number of dependencies
- Wofi isn't actively developed anymore so might need to find an alternative
- Scratchpad module for Waybar
