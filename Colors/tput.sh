#!/bin/bash

#########################
# TEST TPUT COMMANDS
#########################

echo "setaf test = Foreground Colors"

for((i = 0 ; i < 9 ; i++));do
	echo "$(tput setaf ${i}) TPUT SETAF ${i}"
done

for((i = 0 ; i < 9 ; i++));do
	echo "$(tput setab ${i}) TPUT SETAB ${i}"
done

