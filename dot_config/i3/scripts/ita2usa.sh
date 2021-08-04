rm -rf ~/.config/i3/config;
ln -s ~/.config/i3/scripts/i3configusa ~/.config/i3/config;
setxkbmap -layout us -variant intl
i3-msg restart
