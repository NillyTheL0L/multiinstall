#!/usr/bin/env bash

usage() {
    cat <<EOF

usage: ${0##*/} [flags]

  Options:

	--ubuntu          Ubuntu Based.
	--fedora             Fedora Based.
	--arch             Arch Based.
	--opensuse             openSUSE Based.
	--void			VoidLinux Based.
	--alpine		Alpine Based.
	--freebsd		FreeBsd Based.

* MultiInstall NillyTheL0L 2022-2022

EOF
}

[[ -z $1 ]] && {
    usage
    exit 1
}
ubuntu(){

echo Hello $USERNAME just accept all and wait && sudo apt-get install ark micro kakoune emacs vim neovim gimp vlc blender thunderbird flatpak inkscape gnome-terminal lolcat unrar ubuntu-wallpapers ktorrent gedit figlet nano snapd git curl wget && micro -plugin install filemanager && micro -plugin install nordcolors && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install flathub com.valvesoftware.Steam && sudo snap install code --classic && sudo snap install authy && figlet installed | lolcat && figlet Reboot Now | lolcat
	
}

fedora(){

echo Hello $USERNAME just accept all and wait && sudo dnf install ark micro kakoune vim emacs neovim gimp blender thunderbird flatpak inkscape gnome-terminal ktorrent gedit figlet nano snapd git curl wget && micro -plugin install filemanager && micro -plugin install nordcolors && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install flathub com.valvesoftware.Steam && sudo snap install code --classic && sudo snap install authy && figlet installed && figlet Reboot Now
	
}

arch(){

echo Hello $USERNAME just accept all and wait && sudo pacman -S ark micro vim gimp kakoune emacs vlc blender thunderbird flatpak inkscape gnome-terminal ktorrent gedit figlet nano git curl wget && micro -plugin install filemanager && micro -plugin install nordcolors && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install flathub com.valvesoftware.Steam && sudo snap install code --classic && sudo snap install authy && figlet installed && figlet Reboot Now
	
}

opensuse(){


echo Hello $USERNAME just accept all and wait && sudo zypper install ark vim gimp vlc emacs kakoune blender thunderbird flatpak inkscape gnome-terminal ktorrent gedit figlet nano snapd git curl wget &&  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install flathub com.valvesoftware.Steam && sudo snap install code --classic && sudo snap install authy && figlet installed && figlet Reboot Now
	
}


alpine(){


echo Hello $USERNAME just accept all and wait && sudo apk add ark vim gimp vlc blender emacs kakoune thunderbird flatpak inkscape gnome-terminal ktorrent gedit figlet nano git curl wget &&  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install flathub com.valvesoftware.Steam  && figlet installed && figlet Reboot Now
	
}


void(){


echo Hello $USERNAME just accept all and wait && sudo xbps-install  ark vim gimp vlc blender emacs kakoune thunderbird flatpak inkscape gnome-terminal ktorrent gedit figlet nano git curl wget &&  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install flathub com.valvesoftware.Steam  && figlet installed && figlet Reboot Now
	
}


freebsd(){


echo Hello $USERNAME just accept all and wait && pkg install ark gimp-app vlc blender thunderbird inkscape gnome-terminal ktorrent gedit figlet nano git curl wget && figlet installed && figlet Reboot Now
	
}




cat <<EOF
 __  __       _ _   _ ___           _        _ _
 |  \/  |_   _| | |_(_)_ _|_ __  ___| |_ __ _| | |
 | |\/| | | | | | __| || || '_ \/ __| __/ _` | | |
 | |  | | |_| | | |_| || || | | \__ \ || (_| | | |
 |_|  |_|\__,_|_|\__|_|___|_| |_|___/\__\__,_|_|_|

                                  NillyTheL0L - 2022-2022                
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
            --void|-v) void;;
            --alpine|-a) alpine;;
            --freebsd|-b) freebsd;;
        esac
        shift
    } || {
        printf "\nBye\n" "%s" && exit 0
    }

done
