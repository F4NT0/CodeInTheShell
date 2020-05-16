#!/bin/bash

#------------------------
# 033 COLORS TO SHELL CLI
#------------------------


# Regular Colors
for((i = 30 ; i < 37 ; i++));do
	echo -e "\033[0;${i}m Regular Color ${i}"
done

# High Intensity Color
for((i = 90 ; i < 97 ; i++));do
	echo -e "\033[0;${i}m High Intensity ${i}"
done

# Color OFF
# \033[0m


