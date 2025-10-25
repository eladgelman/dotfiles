#!/usr/bin/env bash

if hyprctl monitors  | grep -q "HDMI-A-1"; then
	# External monitor present
	ln -sf ~/.config/hypr/monitors_external.conf ~/.config/hypr/monitors.conf
else 
	# Internal monitor present
	ln -sf ~/.config/hypr/monitors_internal.conf.conf ~/.config/hypr/monitors.conf
fi

hyprctl reload
