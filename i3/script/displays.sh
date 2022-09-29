# モニターの配置を行う

# echo "$(xrandr | grep 'HDMI-1 connected')"
if [ -n "$(xrandr | grep 'HDMI-1 connected')" ] && [ -n "$(xrandr | grep 'HDMI-2 connected')" ]; then
  xrandr --output HDMI-1 --auto --primary --output HDMI-2 --auto --left-of HDMI-1
fi
