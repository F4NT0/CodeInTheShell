#!/bin/bash

#######################################
# TESTE DE SAIDA DE CORES PELO TERMINAL
#######################################

for((i = 30 ; i < 50 ; i++));do
	echo -e "\033[01;${i}m COR VALOR ${i}"
done


