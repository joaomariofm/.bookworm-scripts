#!/bin/bash
US="us"
CURRENT_LAYOUT=$(setxkbmap -query | grep layout | xargs -d '\t' | awk '{print $2}')

if [ $CURRENT_LAYOUT == $US ]
then
	setxkbmap -layout br
else
	setxkbmap -layout us
fi
