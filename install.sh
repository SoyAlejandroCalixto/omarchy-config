#!/bin/bash

cp -r dots/. ~/

omarchy-webapp-remove Discord

sudo pacman -S --needed --noconfirm base-devel discord bitwarden zsh github-cli mise starship yazi zoxide atuin zsh-autosuggestions zsh-syntax-highlighting lsd bat fzf

chsh -s /bin/zsh

echo -e "\e[32m\n¡Hecho! Ahora para las configuraciones dinamicas que se pueden romper con las actualizaciones pegale este prompt a un agente:\e[0m"

echo '
Estoy en Omarchy y quiero que me hagas las siguiente tareas:
- Quita la aceleración del ratón
- Establece esta posición de monitores: HDMI-A-1 en 0x0, y DP-2 en 1920x0, el resto de cosas por defecto
- Quita el compose:caps en la configuracion de hyprland
- Quita la transparencia de las ventanas en focus, que sean totalmente opacas
- Haz que las ventanas transparentes tengan el fondo blureado
'

echo -e "\e[32m\n¡No te olvides de setupear todo con Win+Space!\n\e[0m"
