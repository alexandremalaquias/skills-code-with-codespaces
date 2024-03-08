#!/bin/bash

# Check if the system is running on Linux
if [[ "$(uname)" == "Linux" ]]; then
    # Get the Linux distribution name and version
    if [[ -f /etc/os-release ]]; then
        source /etc/os-release
        echo "Linux distribution: $NAME"
        echo "Version: $VERSION"
    else
        echo "Unable to determine Linux distribution"
    fi
else
    echo "This script is intended to run on Linux only"
fi


