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
printf "╔" >> $filename
i=0

for p in "${tittle[@]}"; do
				i=0
				while [[ $i -lt ${#p}+2 ]]
				do
								printf "═" >> $filename
								i=$(( i+1 ))
				done
				printf "╦" >> $filename
done
printf "╗" >> $filename

# INSERT THE TITTLE
printf "\n" >> $filename
printf "║" >> $filename
for p in "${tittle[@]}"; do
				printf " $p ║" >> $filename
done
printf "║\n" >> $filename

# CLOSING TITTLE
printf "╠" >> $filename
for p in "${tittle[@]}"; do
				i=0
				while [[ $i -lt ${#p}+2 ]]
				do
								printf "═" >> $filename
								i=$(( i+1 ))
				done
				printf "╬" >> $filename
done
printf "╣\n" >> $filename

#--------------------
# INSERT INFORMATIONS
#--------------------

loop=true
while :
do	
 	 printf "Insert Information for the Line with Space: "
	 read -r infos
	 set -- $infos
	 read -ra info <<< "$infos"
   printf "║" >> $filename
	 for p in "${info[@]}"; do
					 printf " $p ║" >> $filename
   done
	 printf "║\n" >> $filename
   printf "╠" >> $filename
	 for p in "${info[@]}"; do
					 i=0
					 while [[ $i -lt ${#p}+2 ]]
					 do
									 printf "═" >> $filename
									 i=$(( i+1 ))
					 done
					 printf "╬" >> $filename
	 done
	 printf "╣\n" >> $filename
 
   # TEST TO INSERT NEW LINE
	 printf "Insert new Line? [y/n] : "
	 read -r booleanEntry
	 if [[ "$booleanEntry" == "y" || "$booleanEntry" == "Y" ]]; then
					continue
	 elif [[ "$booleanEntry" == "n" || "$booleanEntry" == "N" ]]; then
					printf "╚" >> $filename
					for p in "${info[@]}"; do
									i=0
									while [[ $i -lt ${#p}+2 ]]
									do
													printf "═" >> $filename
													i=$(( i+1 ))
									done
									printf "╩" >> $filename
					done
					printf "╝\n\n" >> $filename
				  break
   fi
done
