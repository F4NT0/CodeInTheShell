#!/bin/bash

# ----------------------------------
# INSTALANDO PROGRAMAS DEB NO UBUNTU
# ----------------------------------

# sudo dpkg -i programa.deb

echo -e "Digite o nome do Arquivo: "
read -r name
sudo dpkg -i $name
