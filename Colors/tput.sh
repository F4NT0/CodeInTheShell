#!/bin/bash

#########################
# TESTE DOS COMANDOS TPUT
#########################

echo "Teste de Cores pelo tput"

for((i = 0 ; i < 15 ; i++));do
	echo "$(tput setaf ${i}) TPUT SETAF ${i}"
done
