#!/bin/bash

# PROGRAMA DATE CONFIGURADO 

# Podemos elaborar a saida do programa date interno para a formato que quisermos

# Saida somente o Ano
echo "$(date +"%Y")"

# Saida somente o Mês
echo "$(date +"%m")"

# Saida somente o Dia
echo "$(date +"%d")"

# Saida com os 3
echo "$(date +"%d-%m-%Y")"