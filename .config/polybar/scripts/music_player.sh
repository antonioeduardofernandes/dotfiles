#!/bin/bash
#if $playerctl metadata --format "{{playerName}} {{artist}} {{title}}

(playerctl metadata --format "{{playerName}}" | grep -i spotify) && echo $(playerctl metadata --format "{{artist}}: {{title}}") || echo "Spotify"

