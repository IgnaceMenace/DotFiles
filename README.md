# Dotfiles
Just a repository with all my linux dotfiles to help me reconfigure each time I reinstall a linux distro.
Take whatever you want, it's free.
# Neovim
I want to change the configuration to write it in Lua and use the built in lsp client.
I want to configure it for python, markdown and maybe rust if i start learning it. 
Maybe I will just switch to LuaVim or Lvim or just inspire myself.
# GTK theme
To let your flatpaks access the gtk theme you should run this command
`flatpak override --filesystem=xdg-config/gtk-4.0`
# Tmux
If tmuxinator doesn't work, you should replace it with TmuxP but the configuration is very personal.
# Sway Window Manager
![20220529_23h33m54s_grim](https://user-images.githubusercontent.com/74070019/170892201-65f62493-ed11-4c46-a08b-77e637be05cb.png)

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
- Alacritty
  - Might be replaced by Foot terminal
## Waybar
- JetBrains mono Fonts
# Color chart
The color chart html file contain all the color I use
# Road map
- Scripting the installation for Fedora and Arch
- A nixOS config
- An Ansible script
- A NixOS config file
- Make the zsh theme works even in Podman container
- Reduce the number of dependencies (xofi and j4 dmenu)
- fix polkit issue
- Wofi isn't actively developed anymore so might need to find an alternative
