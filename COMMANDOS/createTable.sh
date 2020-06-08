#!/bin/bash

echo "╭──────────────────────────────────╮"
echo "׀ TABLE CREATOR FOR LINUX TERMINAL ׀"
echo "╰──────────────────────────────────╯"
echo

#---------------------
# CREATE AN EMPTY FILE
#---------------------

printf "DIGIT THE NAME OF THE FILE AND EXTENSION ❱  "
read -r filename
touch ${filename}
echo "[ $(tput setaf 2) OK $(tput sgr0) ] ${filename} CREATED"

#---------------------------
# FIGLET TITTLE FOR THE FILE
#---------------------------

printf "INSERT THE TITTLE FOR THE FILE ❱ "
read -r figletTittle
figlet $figletTittle >> $filename
printf "\n" >> $filename
echo "[ $(tput setaf 2) OK $(tput sgr0) ] FIGLET TITTLE CREATED"

#-------------------------
# INSERT INFORMATION ABOUT
#-------------------------

printf "INSERT THE INFO ABOUT THE FILE ❱ "
read -r infoFile
printf "$infoFile" >> $filename
printf "\n" >> $filename

#-------------------------
# TITTLES FROM THE COLUMNS
#-------------------------

printf "DIGIT THE TITTLES SEPARATED WITH , ❱ "
read -r tittles
IFS=',' #defining the delimiter

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

echo "[ $(tput setaf 2) OK $(tput sgr0) ] THE TITTLES INSERTED!"

#--------------------
# INSERT INFORMATIONS
#--------------------

loop=true
while :
do	
 	 printf "INSERT INFORMATION FOR THE LINE SEPARATED WITH , ❱ "
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
 
	 echo "[ $(tput setaf 2) OK $(tput sgr0) ] LINE INSERTED!"

   # TEST TO INSERT NEW LINE
	 printf "INSERT NEW LINE? [y/n] ❱ "
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
