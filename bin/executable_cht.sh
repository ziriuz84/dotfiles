#!/usr/bin/env sh
selected=`cat ~/.cht-languages ~/.cht-command | fzf`
read -p "query: " query

if grep -qs "$selected" ~/.cht-languages; then 
     query=`echo $query | tr ' ' '+'`
    echo "curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
    curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done
elif grep -qs "$selected" ~/.cht-command; then
    echo "curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done"
    curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done
else
    echo "language or command not found"
fi
