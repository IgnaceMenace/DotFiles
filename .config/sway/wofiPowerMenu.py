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
    "systemctl suspend",
    "systemctl hibernate",
    "systemctl reboot",
    "systemctl poweroff"
  )

  options = "\n".join(keys)
  choice = os.popen("echo -e '" + options + "' | wofi -d -i -p 'Power Menu' -W 250 -H 200 -k /dev/null").readline().strip()
  if choice in keys:
    os.popen(actions[keys.index(choice)])

powerMenu()
