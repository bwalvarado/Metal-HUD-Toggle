#!/bin/bash

hudstatus=$(/bin/launchctl getenv MTL_HUD_ENABLED)

if [[ $1 = "on" ]]; then
	echo "Turning on Metal HUD"
	/bin/launchctl setenv MTL_HUD_ENABLED 1
elif [[ $1 = "off" ]]; then
	echo "Turning off Metal HUD"
	/bin/launchctl setenv MTL_HUD_ENABLED 0
else
	if [[ $hudstatus = "1" ]]; then
		echo "METAL HUD [ON]"
	else
		echo "METAL HUD [OFF]"
	fi
	echo "Usage: metalhud.sh [on|off]"
fi
