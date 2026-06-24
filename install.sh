#!/bin/bash

if [ "$(basename "$PWD")" != "omarchy-config" ]; then
    echo "Error: Este script debe ejecutarse desde la carpeta omarchy-config."
    exit 1
fi

cp -r dots/. ~/

omarchy-webapp-remove Discord

sudo pacman -S --needed --noconfirm base-devel discord zsh github-cli mise starship yazi zoxide atuin zsh-autosuggestions zsh-syntax-highlighting lsd bat fzf

chsh -s /bin/zsh

echo -e "\e[32m¡Hecho! Ahora para las configuraciones dinamicas que se pueden romper con las actualizaciones pegale este prompt a un agente:\e[0m"

echo "
Estoy en Omarchy y quiero que me hagas las siguiente tareas:
- Quita el compose:caps en la configuracion de hyprland
- Quita en la configuracion de Hyprland la transparencia de las ventanas focus, que sean totalmente opacas
- Añade el mpris al waybar especificamente a la derecha del tray-expander y ajusta esto:
> - Que al scrollearlo arriba/abajo con el raton cambies de cancion
> - Que al hacer click pauses/continues la cancion
> - Que solo tenga en cuenta el player "chromium" y ningun otro mas
> - Que solo muestre el nombre de la cancion sin el artista ni nada, y el icono "󰎇" a la derecha
> - Que tenga un max-length de 25, y en el css tan solo 12 pixeles de margin-right
- Establece en la configuración los monitores monitor=HDMI-A-1,1920x1080@75,0x0,1 y monitor=DP-2,1920x1080@60,1920x0,1
"
