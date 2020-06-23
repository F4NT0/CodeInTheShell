#!/bin/bash

# Variavel
name=$(date +"%Y%m%d_"$(hostname)).txt

touch $name
printf "Teste Invalido \n" >> $name
printf "Inválido" >> $name
