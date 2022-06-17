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
# Joplin
In `tools\option\General`
- `Path` write `/bin/flatpak-spawn`
- `Arguments` write `--host /usr/bin/foot vim`
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
- Foot term config
- Python script for specific tiling in sway inspired by the one by nwg_piotr
- Wifi menu in wofi and maybe screen management menu and tiling layout menu
- Rofi instead of Wofi ?
- Scripting the installation for Fedora and Arch
- Red light there is a redshift [fork](https://github.com/giucam/redshift) that works on Wayland
- A NixOS config file
- Make the zsh theme works even in Podman container
- Reduce the number of dependencies (wofi and j4 dmenu)
- fix polkit issue
- Wofi isn't actively developed anymore so might need to find an alternative
- Midnight Commander
