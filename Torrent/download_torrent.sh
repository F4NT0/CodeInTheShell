#!/bin/bash

# DOWNLOAD TORRENT USING TRANSMISSION-CLI

echo "┌───────────────────────────────┐"
echo "׀ TORRENT DOWNLOADER FOR LINUX  ׀"
echo "└───────────────────────────────┘"
echo ""
echo ""

printf "Insert the Magnetic Link: "
read -r magnetLink
transmission-cli $magnetLink -w ~/Vídeos/ -er

