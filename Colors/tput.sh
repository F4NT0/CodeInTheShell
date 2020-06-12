#!/bin/bash

# TEST TPUT COMMANDS

echo "┌───────────────────┐"
echo "׀ FOREGROUND COLORS ׀"
echo "└───────────────────┘"

for((i = 0 ; i < 9 ; i++));do
				echo "$(tput setaf ${i}) TPUT SETAF ${i} $(tput sgr0)"
done

echo "┌───────────────────┐"
echo "׀ BACKGROUND COLORS ׀"
echo "└───────────────────┘"


for((i = 0 ; i < 9 ; i++));do
				echo "$(tput setab ${i}) TPUT SETAB ${i} $(tput sgr0)"
done

