wsl --shutdown && wsl --manage archlinux --set-sparse true --allow-unsafe
type .\etc\pacman.conf | CLIP && wsl sh -c "powershell.exe Get-Clipboard > /etc/pacman.conf"
wsl -d archlinux pacman -Syyu --noconfirm git sudo
type .\etc\sudoers.d\wheel | CLIP && wsl sh -c "powershell.exe Get-Clipboard > /etc/sudoers.d/wheel"
wsl -d archlinux sh -c "useradd -m -G wheel <USER> && passwd <USER> && echo -e '[user]\ndefault=<USER>' >> /etc/wsl.conf"
wsl --terminate archlinux
