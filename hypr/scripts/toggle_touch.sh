#!/bin/bash
DEVICE="wacom-hid-4841-finger"
# Fetch current state (returns true or false)
STATE=$(hyprctl devices -j | jq -r ".touch[] | select(.name == \"$DEVICE\") | .enabled")

if [ "$STATE" = "true" ]; then
    # Use the new bracket syntax
    hyprctl keyword "device[$DEVICE]:enabled" false
else
    # Use the new bracket syntax
    hyprctl keyword "device[$DEVICE]:enabled" true
fi
