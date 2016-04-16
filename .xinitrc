[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[ -f ~/.xprofile ] && source ~/.xprofile

urxvtd --quiet --opendisplay --fork

xrandr --output CRT1 --off --output DFP6 --off --output DFP7 --mode 1920x1080 --pos 3840x0 --rotate normal --output DFP4 --off --output DFP5 --mode 1920x1080 --pos 0x0 --rotate normal --output DFP2 --off --output DFP3 --off --output DFP1 --mode 1920x1080 --pos 1920x0 --rotate normal

feh --bg-scale --no-xinerama ~/Documents/Pictures/pixeltrees.jpg

compton --config ~/.config/compton/config -b

xset mouse 2 0

eval "$(gpg-agent --daemon)"
  
exec i3
