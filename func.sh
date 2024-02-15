#!/bin/bash


log() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $1"
}

get_formatted_date() {
  echo $(date +'%Y-%m-%d')
}


# Function to display Bash version
bash_version_check() {
  echo "Bash version: $BASH_VERSION"
}

# Export the version check function

get_user_input() {
    local message=$1
    local options_array=("${@:2}")
    local selected_index=0

    while true; do
        clear
        [ -n "$message" ] && echo "$message"

        for ((i=0; i<${#options_array[@]}; i++)); do
            if [ $i -eq $selected_index ]; then
                echo "[*] ${options_array[$i]}"
            else
                echo "[ ] ${options_array[$i]}"
            fi
        done

        read -s -n 1 key

        case $key in
            "A") ((selected_index=(selected_index-1+${#options_array[@]})%${#options_array[@]}));;
            "B") ((selected_index=(selected_index+1)%${#options_array[@]}));;
            $'\x0A' | "") break;;
        esac
    done

    return $selected_index
}
