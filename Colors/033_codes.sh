#!/bin/bash

#------------------------
# 033 COLORS TO SHELL CLI
#------------------------


# Regular Colors
for((i = 30 ; i < 50 ; i++));do
	echo -e "\033[0;${i}m Regular Color ${i}"
done

# Color OFF
# \033[0m


