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
- Quita la transparencia de las ventanas focus, que sean totalmente opacas
- Que las ventanas transparentes tengan el fondo blureado
- Crea un bind para una ventana de agente flotante:
> - Añade un bind SUPER+F9 que ejecute "xdg-terminal-exec --app-id=org.omarchy.opencode -e opencode"
> - Haz en la configuración que ese ID se abra siempre flotante, centrado y con fijo 900x720 píxeles
- Crea un módulo QML en ~/.config/omarchy/bar/modules/ y regístralo en el shell.json a la izquierda de omarchy.tray:
> - El widget debe usar MPRIS para mostrar solo el player "chromium"
> - Con el icono 󰎇 a la izquierda del nombre de la canción (sin artista)
> - 25 carácteres máximos y 12 píxeles de margen a la derecha
> - Scroll arriba/abajo para cambiar de canción y click para pausar/reanudar
'

echo -e "\e[32m\n¡No te olvides de setupear todo con Win+Space!\n\e[0m"
