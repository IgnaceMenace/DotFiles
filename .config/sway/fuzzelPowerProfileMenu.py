#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os

def powerMenu():
  
  profiles = (
    "performance",
    "balanced",
    "power-saver"
  )
  keys = [
    " Performance",
    " Balanced",
    " Power-saver"
  ]
  if currentProfile in profiles:
    keys[profiles.index(currentProfile)] = "" + keys[profiles.index(currentProfile)][1:]

  actions = (
    "powerprofilesctl set " + profiles[0],
    "powerprofilesctl set " + profiles[1],
    "powerprofilesctl set " + profiles[2],
  )
  options = "\n".join(keys)
  choice = os.popen("echo -e '" + options + "' | fuzzel -f 'JetBrainsMono NF'-13 -C ebcb8bff -b 1d1f21ff -T footclient -B 3 -t 88c0d0ff -m a3be8cff -S d8dee9ff -s bf616aff -d -w 13 -l 3").readline().strip()
  if choice in keys:
    os.popen(actions[keys.index(choice)])


currentProfile = os.popen("powerprofilesctl get").readline().strip()
powerMenu()
