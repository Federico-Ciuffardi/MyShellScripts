#!/bin/sh

autostart_folder=$HOME/bin/autostart_folder

# Wallpaper
nitrogen --set-auto ~/Pictures/5-55779_green-nature-dual-monitor-desktop-desktop-images-wallpaper.jpg &

# Compositor
picom &

# Network
nm-applet &

# Audio
start-pulseaudio-x11 &

# Disk Automount
udiskie &

# Screensaver
xscreensaver -no-splash &

# Notification
dunst &

# Guake
guake &

# Jack
$autostart_folder/start_jack.sh &