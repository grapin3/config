# i3blocks config file
#
# Please see man i3blocks for a complete reference!
# The man page is also hosted at http://vivien.github.io/i3blocks
#
# List of valid properties:
#
# align
# color
# command
# full_text
# instance
# interval
# label
# min_width
# name
# separator
# separator_block_width
# short_text
# signal
# urgent

# Global properties
#
# The top properties below are applied to every block, but can be overridden.
# Each block command defaults to the script name to avoid boilerplate.
command=/usr/lib/i3blocks/$BLOCK_NAME
separator_block_width=15
markup=none

# Generic media player support
#
# This displays "ARTIST - SONG" if a music is playing.
# Supported players are: spotify, vlc, audacious, xmms2, mplayer, and others.
[mediaplayer]
command=~/.config/i3blocks/mediaplayer/mediaplayer
instance=vlc
interval=5
signal=10

#https://github.com/vivien/i3blocks-contrib/tree/master/key_layout
# [key_layout]
# interval=1
# command=~/.config/i3/blocks/key_layout/key_layout

# Volume indicator
#
# The first parameter sets the step (and units to display)
# The second parameter overrides the mixer selection
# See the script for details.
[volume]
command=~/.config/i3blocks/volume-pulseaudio/volume-pulseaudio -F 1
#label=VOL
#label=♪
#instance=Master
#instance=PCM

interval=once
signal=1

# Memory usage
#
# The type defaults to "mem" if the instance is not specified.
#[memory]
#label=MEM
#separator=false
#interval=30

#[memory]
#label=SWAP
#instance=swap
#separator=false
#interval=30

# Disk usage
#
# The directory defaults to $HOME if the instance is not specified.
# The script may be called with a optional argument to set the alert
# (defaults to 10 for 10%).
#[disk]
#label=HOME
#instance=/mnt/data
#interval=30

# Network interface monitoring
#
# If the instance is not specified, use the interface used for default route.
# The address can be forced to IPv4 or IPv6 with -4 or -6 switches.
[iface]
instance=enp4s0f2
label=
color=#00FF00
interval=10
#"separator=false

[wifi]
label=
instance=wlp3s0
interval=10
#separator=false

# [bandwidth]
# #instance=eth0
# interval=5

# CPU usage
#
# The script may be called with -w and -c switches to specify thresholds,
# see the script for details.
# [cpu_usage]
# label=CPU
# interval=10
# min_width=CPU: 100.00%
#separator=false

# Temperature
#
# Support multiple chips, though lm-sensors.
# The script may be called with -w and -c switches to specify thresholds,
# see the script for details.
[temperature]
label=
interval=10

# Battery indicator
#
# The battery instance defaults to 0.
[battery]
command=~/.config/i3blocks/battery/battery
markup=pango
#label=⚡
#instance=1
interval=30

# Date Time
#
[time]
command=date '+%Y-%m-%d %H:%M'
interval=5

# OpenVPN support
#
# Support multiple VPN, with colors.
#[openvpn]
#interval=20


# Key indicators
#
# Add the following bindings to i3 config file:
#
# bindsym --release Caps_Lock exec pkill -SIGRTMIN+11 i3blocks
# bindsym --release Num_Lock  exec pkill -SIGRTMIN+11 i3blocks
#[keyindicator]
#instance=CAPS
#interval=once
#signal=11

#[keyindicator]
#instance=NUM
#interval=once
#signal=11
