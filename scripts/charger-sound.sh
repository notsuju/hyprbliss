#!/bin/bash

# Export the runtime directory so PipeWire can be found in the background
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

# Define your hardware path
AC_PATH="/sys/class/power_supply/AC0/online"

# Initial state when the script starts
prev_ac_state=$(cat "$AC_PATH")

# Listen to the system hardware for power supply events
udevadm monitor --subsystem-match=power_supply | while read -r line; do
    if echo "$line" | grep -q "change"; then
        
        # Read the current state of AC0
        current_ac_state=$(cat "$AC_PATH")
        
        # Only play the sound if the state has actually CHANGED
        if [ "$current_ac_state" != "$prev_ac_state" ]; then
            if [ "$current_ac_state" = "1" ]; then
                # Play charging sound at exactly 50% volume
                pw-play --volume=0.5 /home/suju/Documents/soundsLinux/tuturu.wav &
            elif [ "$current_ac_state" = "0" ]; then
                # Play removal sound at exactly 50% volume
                pw-play --volume=0.5 /home/suju/Documents/soundsLinux/za_warudo.wav &
            fi
            
            # Update the memory of the previous state
            prev_ac_state=$current_ac_state
        fi
    fi
done
