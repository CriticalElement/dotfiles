TITLE=$(yabai -m query --windows --window)
if [ "$TITLE" = "" ]; then
    sketchybar --set title_proxy label=""
    sketchybar --animate circ 15 --set title y_offset=70
    sleep 0.2 && sketchybar --set title label=""
else
    LABEL="$(echo $TITLE | jq -r '.title')"
    echo $LABEL
    if [ "$(sketchybar --query title_proxy | jq -r '.label.value')" != "$LABEL" ]; then
        sketchybar --set title_proxy label="$LABEL"
        sketchybar --animate circ 15 --set title y_offset=70            \
                   --animate circ 10  --set title y_offset=7            \
                   --animate circ 15 --set title y_offset=0
        
        sleep 0.1 && sketchybar --set title label="$LABEL"
    fi
fi