wsl --manage archlinux --set-sparse true --allow-unsafe
wsl -d archlinux pacman -Syyu --noconfirm
type .\etc\pacman.conf | CLIP && wsl sh -c "powershell.exe Get-Clipboard > /etc/pacman.conf"
wsl -d archlinux sh -c "pacman -S git micro nano sudo superfile wget"
wsl -d archlinux sh -c "useradd -m -G wheel <USER> && passwd <USER> && echo -e '[user]\ndefault=<USER>' >> /etc/wsl.conf"
wsl --terminate archlinux