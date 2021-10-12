# dotfiles
Simply my dotfiles.

## Installation

I use [Chezmoi](https://chezmoi.io) to maintain my dotfiles in my pc. Follow the instruction on main site to install it (only 64 bit).

You can use my repo using 

`$ chezmoi init https://github.com/ziriu84/dotfiles.git`

## What is inside

[.zhsrc](https://github.com/ziriuz84/dotfiles/blob/main/dot_zshrc)
[.vimrc](https://github.com/ziriuz84/dotfiles/blob/main/dot_vimrc)
[.tmux.conf](https://github.com/ziriuz84/dotfiles/blob/main/dot_tmux.conf)
[coc-settings.json](https://github.com/ziriuz84/dotfiles/blob/main/dot_vim/coc-settings.json)
[dunstrc](https://github.com/ziriuz84/dotfiles/blob/main/dot_config/dunst/dunstrc)
[kitty](https://github.com/ziriuz84/dotfiles/blob/main/dot_config/kitty/kitty.conf)
[rofi's config.rasi](https://github.com/ziriuz84/dotfiles/blob/main/dot_config/rofi/config.rasi)
[i3's config](https://github.com/ziriuz84/dotfiles/tree/main/dot_config/i3)
[cht.sh search script](https://github.com/ziriuz84/dotfiles/blob/main/bin/executable_cht.sh)
[Ping utility](https://github.com/ziriuz84/dotfiles/blob/main/bin/executable_pingpy.py)
[My wallpapers](https://github.com/ziriuz84/dotfiles/tree/main/wallpaper)
[Command dictionary for cht.sh](https://github.com/ziriuz84/dotfiles/blob/main/dot_cht-command)
[Language dictionary fot cht.sh](https://github.com/ziriuz84/dotfiles/blob/main/dot_cht-languages)

## Why so many file for i3's configuration?

I use mainly us layout keyboards, but sometime I need to use it layout keyboards. In script directory there are 2 configuration file, us and it, and 2 shell script. I simply remapped $mod+Shift+u to switch to us layout and $mod+Shift+it to switch to it layout. With this trick I can use the same keycap in my keyboards both with us and it layout

## What is cht.sh script?

cht.sh script is a shell script inspired by [The Primagen](https://www.youtube.com/watch?v=hJzqEAf2U4I) (All my thanks Coconutagen!!) to make API calls to [cht.sh](https://cht.sh/). It uses fzf to search language or command in my dicionaries

## What is Ping Utilty

It's simply a little Python script to make ping calls to both domain.do and **www.**domain.do. Similar to my Golang project [Pingo](https://github.com/ziriuz84/pingo)
