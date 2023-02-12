#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os

def layoutMenu():
  keys = (
    "Alternating",
    "Tabbed",
    "Stacked",
    "Toggle",
    "Columns",
    "Rows",
  )

  actions = (
    "exec python ~/.config/sway/alternatingLayout.py",
    "swaymsg layout tabbed",
    "swaymsg layout stacking",
    "swaymsg layout toggle split",
    "swaymsg splith",
    "swaymsg splitv",
  )

  options = "\n".join(keys)
  #choice = os.popen("echo -e '" + options + "' | wofi -d -i -p 'Layout Menu' -W 250 -H 230 -k /dev/null").readline().strip()
  choice = os.popen("echo -e '" + options + "' | fuzzel -f JetBrainsMono -C ebcb8bff -b 1d1f21ff -T footclient -B 3 -t 88c0d0ff -m a3be8cff -S d8dee9ff -s bf616aff -d -w 10 -l 6").readline().strip()
  if ((choice in keys) and (choice != "Alternating")):
    os.popen("exec pkill -f alternatingLayout.py")
    os.popen(actions[keys.index(choice)])
  else:
    os.popen(actions[keys.index(choice)])

layoutMenu()
