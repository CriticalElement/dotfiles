SID=$(echo $INFO | jq .[\"display-1\"])
LENGTH=$($(echo yabai -m query --spaces) | jq length)
sketchybar --animate circ 15 --set highlight_space background.padding_left=$((-(LENGTH - (SID - 1)) * 30 + 4))