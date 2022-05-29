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
# Color chart
The color chart html file contain all the color I use
# Road map
- Scripting the installation for Fedora and Arch
- Make the zsh theme works even in Podman container
- Reduce the number of dependencies
- Wofi isn't actively developed anymore so might need to find an alternative
- Scratchpad module for Waybar
