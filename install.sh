#!/bin/bash

if [ "$(basename "$PWD")" != "omarchy-config" ]; then
    echo "Error: Este script debe ejecutarse desde la carpeta omarchy-config."
    exit 1
fi

cp -r dots/. ~/

omarchy-webapp-remove Discord

sudo pacman -S --needed --noconfirm base-devel discord bitwarden zsh github-cli mise starship yazi zoxide atuin zsh-autosuggestions zsh-syntax-highlighting lsd bat fzf

chsh -s /bin/zsh

cat << EOF >> $HOME/.config/hypr/hyprland.conf

# Agente - ghostty flotante con opencode
windowrule = float on, match:class ^(org.omarchy.opencode)$
windowrule = center on, match:class ^(org.omarchy.opencode)$
windowrule = size 900 720, match:class ^(org.omarchy.opencode)$
EOF

cat << EOF >> $HOME/.config/hypr/bindings.conf

bindd = SUPER, F9, Pajandroide Float, exec, xdg-terminal-exec --app-id=org.omarchy.opencode -e opencode
EOF

echo -e "\e[32m\n¡Hecho! Ahora para las configuraciones dinamicas que se pueden romper con las actualizaciones pegale este prompt a un agente:\e[0m"

echo "
Estoy en Omarchy y quiero que me hagas las siguiente tareas:
- Quita el compose:caps en la configuracion de hyprland
- Quita en la configuracion de Hyprland la transparencia de las ventanas focus, que sean totalmente opacas
- Añade el mpris al waybar especificamente a la derecha del tray-expander y ajusta esto:
> - Que al scrollearlo arriba/abajo con el raton cambies de cancion
> - Que al hacer click pauses/continues la cancion
> - Que solo tenga en cuenta el player 'chromium' y ningun otro mas
> - Que solo muestre el nombre de la cancion sin el artista ni nada, y el icono '󰎇' a la izquierda
> - Que tenga un max-length de 25, y en el css tan solo 12 pixeles de margin-right
- Establece en la configuración los monitores: monitor=HDMI-A-1,1920x1080@75,0x0,1 y monitor=DP-2,1920x1080@60,1920x0,1
"

echo -e "\e[32m\n¡No te olvides de setupear todo con Ctrl+Alt+Space!\n\e[0m"
