#!/bin/bash

# Include the func.sh file
source func.sh

log "Script started."

# Rest of the script


options=("Option 1" "Option 2" "Option 3" "Option 4")
get_user_input "Select an option:" "${options[@]}"
selected_index=$?

echo "You selected: ${options[$selected_index]}"