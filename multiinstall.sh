#!/usr/bin/env bash

usage() {
    cat <<EOF

usage: ${0##*/} [flags]

  Options:

    --ubuntu          Ubuntu Based.
    --fedora             Fedora Based.
    --arch             Arch Based.
    --opensuse             openSUSE Based.

* MultiInstall NillyTheL0L 2022-2022

EOF
}

[[ -z $1 ]] && {
    usage
    exit 1
}
ubuntu(){

echo Hello $USERNAME just accept all and wait && sudo apt-get install ark micro vim neovim gimp vlc blender thunderbird flatpak inkscape gnome-terminal lolcat unrar ubuntu-wallpapers ktorrent gedit figlet nano snapd git curl wget && micro -plugin install filemanager && micro -plugin install nordcolors && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install flathub com.valvesoftware.Steam && sudo snap install code --classic && sudo snap install authy && figlet installed | lolcat && figlet Reboot Now | lolcat
	
}

fedora(){

echo Hello $USERNAME just accept all and wait && sudo dnf install ark micro vim neovim gimp vlc blender thunderbird flatpak inkscape gnome-terminal ktorrent gedit figlet nano snapd git curl wget && micro -plugin install filemanager && micro -plugin install nordcolors && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install flathub com.valvesoftware.Steam && sudo snap install code --classic && sudo snap install authy && figlet installed && figlet Reboot Now
	
}

arch(){

echo Hello $USERNAME just accept all and wait && sudo pacman -S ark micro vim gimp vlc blender thunderbird flatpak inkscape gnome-terminal ktorrent gedit figlet nano snapd git curl wget && micro -plugin install filemanager && micro -plugin install nordcolors && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install flathub com.valvesoftware.Steam && sudo snap install code --classic && sudo snap install authy && figlet installed && figlet Reboot Now
	
}

opensuse(){


echo Hello $USERNAME just accept all and wait && sudo zypper in ark vim gimp vlc blender thunderbird flatpak inkscape gnome-terminal ktorrent gedit figlet nano snapd git curl wget &&  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install flathub com.valvesoftware.Steam && sudo snap install code --classic && sudo snap install authy && figlet installed && figlet Reboot Now
	
}

cat <<EOF
--------------MULTIINSTALL SCRIPT BY NILLYTHEL0L--------------
EOF

while [[ "$1" ]]; do
    read -s -n 1 -p "Do you want to continue?[y/N]: "
    [[ "$REPLY" == "y" ||  "$REPLY" == "Y" ]] && {
         echo
         case "$1" in
            --ubuntu|-u) ubuntu;;
            --fedora|-f) fedora;;
            --arch|-a) arch;;
            --opensuse|-o) opensuse;;
        esac
        shift
    } || {
        printf "\nBye\n" "%s" && exit 0
    }
done
