#!/bin/bash

echo "╭──────────────────────────────────╮"
echo "׀ TABLE CREATOR FOR LINUX TERMINAL ׀"
echo "╰──────────────────────────────────╯"
echo

#---------------------
# CREATE AN EMPTY FILE
#---------------------

#printf "Digit the Name of the File and Extension ❱  "
#read -r filename
#touch ${filename}
#echo "[ $(tput setaf 2) OK $(tput sgr0) ] ${filename} CREATED"

#--------------------------
# GET THE NUMBER OF COLUMNS
#--------------------------

#printf "Digit the Number of Columns ❱  "
#read -r columnNumbers

#-------------------------
# TITTLES FROM THE COLUMNS
#-------------------------

printf "Digit the Tittles of Columns with a Space: "
read -r tittles


# MADE THE BEGGINING
set -- $tittles
read -ra tittle <<< "$tittles"
#echo "${tittle[0]}" #read the first value inserted
#echo "${#tittle[0]}"#read the number of the value
printf "╔"
i=0

for p in "${tittle[@]}"; do
				i=0
				while [[ $i -lt ${#p}+2 ]]
				do
								printf "═"
								i=$(( i+1 ))
				done
				printf "╦"
done
printf "╗"

# INSERT THE TITTLE
printf "\n"
printf "║"
for p in "${tittle[@]}"; do
				printf " $p ║"
done
printf "║\n"

# CLOSING TITTLE
printf "╚"
for p in "${tittle[@]}"; do
				i=0
				while [[ $i -lt ${#p}+2 ]]
				do
								printf "═"
								i=$(( i+1 ))
				done
				printf "╩"
done
printf "╝\n"

#max=${#tittle[0]}+2
#while [[ $i -lt max ]] 
#do
#				printf "═"
#				i=$(( i+1 ))
#done
#printf "╦"
#printf "\n"
#printf "║ ${tittle[0]} ║\n"
#printf "╠"
#j=0
#while [[ $j -lt max ]]
#do
#				printf "═"
#				j=$(( j+1 ))
#done
#printf "╬\n"

# SET THE INFO FOR THE LINES
#set -- $tittles #Split all tittles in numbers
#read -ra tittle <<< "$tittles"
#for i in "${tittle[@]}"; do	
#			printf "║ $i " >> $filename
#done

# INSERT INFORMATIONS
#loop=true
#while :
#do
#	 printf "\n" >> $filename		
#	 printf "Insert Information for the Line with Space: "
#	 read -r infos
#	 set -- $infos
#	 read -ra info <<< "$infos"
#	 for i in "${info[@]}"; do
#					 printf "║ $i " >> $filename
#	 done
#	 printf "Insert new Line? [y/n] : "
#	 read -r booleanEntry
#	 if [[ "$booleanEntry" == "y" || "$booleanEntry" == "Y" ]]; then
#					continue
#	 elif [[ "$booleanEntry" == "n" || "$booleanEntry" == "N" ]]; then
#					break
#	 fi
#done
