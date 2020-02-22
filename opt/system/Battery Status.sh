#!/bin/bash

batstat=`cat /sys/class/power_supply/battery/status`
batcap=`cat /sys/class/power_supply/battery/capacity`
bathealth=`cat /sys/class/power_supply/battery/health`
batvoltnow=`cat /sys/class/power_supply/battery/voltage_now`
batvoltnow=`awk "BEGIN {print $batvoltnow*0.000001}"`
battemp=`cat /sys/class/power_supply/battery/temp`
battemp=`awk "BEGIN {print $battemp*0.1}"`

msgbox "Battery Details:
Status: $batstat
Capacity: $batcap %
Voltage: $batvoltnow
Health: $bathealth
Temperture: $battemp C"
