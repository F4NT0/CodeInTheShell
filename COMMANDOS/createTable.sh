#!/bin/bash

echo "╭──────────────────────────────────╮"
echo "׀ TABLE CREATOR FOR LINUX TERMINAL ׀"
echo "╰──────────────────────────────────╯"
echo

#---------------------
# CREATE AN EMPTY FILE
#---------------------

printf "Digit the Name of the File and Extension ❱  "
read -r filename
touch ${filename}
echo "[ $(tput setaf 2) OK $(tput sgr0) ] ${filename} CREATED"

#--------------------------
# GET THE NUMBER OF COLUMNS
#--------------------------

printf "Digit the Number of Columns ❱  "
read -r columnNumbers

#-------------------------
# TITTLES FROM THE COLUMNS
#-------------------------

printf "Digit the Tittles of Columns with a Space: "
read -r tittles

value=${#tittles}
sum=$(( $value + 2 ))
#echo "${#tittles}"
#echo "${sum}"

a=0
printf "╔" >> $filename
while [ $a -lt $sum ]
do
	printf "═" >> $filename
	a=$((a+1))
done
printf "╗" >> $filename

# SET THE INFO FOR THE LINES
set -- $tittles #Split all tittles in numbers
read -ra tittle <<< "$tittles"
for i in "${tittle[@]}"; do
			printf "║ $i " >> $filename
done

