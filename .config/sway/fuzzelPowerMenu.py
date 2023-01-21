#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os

def powerMenu():
  keys = (
    "\uf08b   Log Out",
    "\uf023   Lock",
    "\uf186   Suspend",
    "\uf2dc   Hibernate",
    "\uf021   Reboot",
    "\uf011   Shutdown",
  )

  actions = (
    "swaymsg exit",
    "swaylock -C ~/.config/sway/swayLock.config",
    "systemctl suspend && swaylock -C ~/.config/sway/swayLock.config",
    "systemctl hibernate",
    "systemctl reboot",
    "systemctl poweroff"
  )

  options = "\n".join(keys)
  #choice = os.popen("echo -e '" + options + "' | wofi -d -i -p 'Power Menu' -W 250 -H 230 -k /dev/null").readline().strip()
  choice = os.popen("echo -e '" + options + "' | fuzzel -f JetBrainsMono -C ebcb8bff -b 1d1f21ff -T footclient -B 3 -t 88c0d0ff -m a3be8cff -S d8dee9ff -s bf616aff -d -w 10 -l 6").readline().strip()
  if choice in keys:
    os.popen(actions[keys.index(choice)])

powerMenu()
