wsl --shutdown && wsl --manage archlinux --set-sparse true --allow-unsafe
wsl -d archlinux sh -c 'printf "en_US.UTF-8 UTF-8\n" >> /etc/locale.gen && locale-gen'
wsl -d archlinux pacman -Syyu --noconfirm --needed base-devel
Get-Content .\etc\sudoers.d\wheel | CLIP && wsl sh -c 'powershell.exe Get-Clipboard > /etc/sudoers.d/wheel'
wsl -d archlinux sh -c 'useradd -m -G wheel <USER> && passwd <USER> && printf "[user]\ndefault=<USER>\n" >> /etc/wsl.conf'
wsl --terminate archlinux
