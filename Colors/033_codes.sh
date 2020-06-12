#!/bin/bash

#------------------------
# 033 COLORS TO SHELL CLI
#------------------------

echo "$(tput setaf 5)" 
echo "┌──────────────────────────┐"
echo "׀ \033[Style;Color] COLORS ׀"
echo "└──────────────────────────┘"
echo "$(tput sgr0)"

echo "$(tput setaf 3)"
echo "┌───────────────────┐"
echo "׀ FOREGROUND COLORS ׀"
echo "└───────────────────┘"
echo "$(tput sgr0)"

for((i = 30 ; i < 38 ; i++));do
	echo -e "\033[0;${i}m Regular Color ${i} \033[0m"
done

echo "$(tput setaf 3)"
echo "┌───────────────────┐"
echo "׀ BACKGROUND COLORS ׀"
echo "└───────────────────┘"
echo "$(tput sgr0)"

for((i = 40 ; i < 48 ; i++));do
	echo -e "\033[0;${i}m Regular Color ${i} \033[0m"
done

# Color OFF
echo -e "\033[0m"


