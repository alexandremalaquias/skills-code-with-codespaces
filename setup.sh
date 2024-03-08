#!/bin/bash


# Determine OS version
if [[ "$(uname)" == "Darwin" ]]; then
    echo "Mac OS $(sw_vers -productVersion)"
elif [[ "$(uname)" == "Linux" ]]; then
    if [[ -f "/etc/os-release" ]]; then
        source "/etc/os-release"
        echo -n "$PRETTY_NAME "
        echo -n "$(grep -oP '(?<=VERSION_ID=)\d+' /etc/os-release)"
    elif [[ -f "/etc/lsb-release" ]]; then
        source "/etc/lsb-release"
        echo -n "$DISTRIB_DESCRIPTION "
        echo -n "$(grep -oP '(?<=DISTRIB_RELEASE=)\d+' /etc/lsb-release)"
    else
        echo "Linux"
    fi
else
    echo "Unknown OS"
fi


