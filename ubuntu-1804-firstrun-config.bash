#!/bin/bash
#===============================================================================
#          FILE:  ubuntu-1804-firstrun-config.bash
#         USAGE:  sudo bash ./ubuntu-firstrun-config.bash
#   DESCRIPTION:  The script enables installation and configuration of some
#                 essential apps and utilties that make your Ubuntu more
#                 useful and powerful.
#       OPTIONS:  ---
#  REQUIREMENTS:  zenity (preinstalled with Ubuntu 18.04)
#         NOTES:  ---
#        AUTHOR:  wiktor2200, https://github.com/wiktor2200
#          REPO:  https://github.com/wiktor2200/Ubuntu-1804-firstrun-config
#       CREATED:  2018-06-13
#===============================================================================
# This script is generated using: generate-script-from-config.bash from repo: https://github.com/wiktor2200/Ubuntu-1804-firstrun-config

# Get script's main directory
DIR=`dirname $0`

# Render zenity menu
response=$(zenity --height=700 --width=1200 --window-icon=$DIR/ubuntu_icon.png --list --checklist --title="Configure your Ubuntu 18.04" --column="State" --column="Task" --column="Description" TRUE "Install archives tools" "Support for zip, rar, 7zip etc." \
TRUE "Uninstall garbage Gnome/Ubuntu packages" "Uninstall some garbage packages e.g. orca, shotwell, rhythmbox, totem, transmission" \
TRUE "Install codecs" "Codecs to support common audio, video formats and additional fonts." \
TRUE "Install Gnome tools" "Install Gnome settings managers and utils." \
TRUE "Install language packages" "Installing language packages for your locale different than English." \
TRUE "Install Libreoffice" "Install full Libreoffice package with language packages." \
TRUE "Install password manager" "Install password manager – keepassXC" \
TRUE "Install Synaptic package manager" "Install Synaptic package manager" \
TRUE "Install Thunderbird" "Install Thunderbird mail client" \
TRUE "Install useful system utilties" "Install Partitioning tools, space usage tools, hardware info tools." \
TRUE "Install VLC" "Install popular media player - both music and videos." \
TRUE "Upgrade packages" "Perform apt dist-upgrade" \
FALSE "Enable /tmp folder in RAM" "Increase efficiency of your system and enable /tmp folder in RAM. Recommended if >8GB of RAM" \
FALSE "Install Amarok" "Install powerful music player – Amarok" \
FALSE "Install AMD-Nvidia graphics drivers" "Install Install AMD-Nvidia graphics drivers" \
FALSE "Install Atom.io IDE" "Install easy to customize IDE – Atom.io" \
FALSE "Install Audacity audio editor" "Install Audacity audio editor" \
FALSE "Install batch photos utilties" "Install utilties to batch modify your photos and metadata e.g. aaphoto, exiv2" \
FALSE "Install better laptop’s battery support" "Install better laptop’s battery support. Recommended on laptops." \
FALSE "Install bootable live USB creator – mkusb" "Install bootable live USB creator – mkusb" \
FALSE "Install CD/DVD burner" "Install CD/DVD burner – if you have disk drive" \
FALSE "Install Chromium browser" "Install open-source Chromium browser. Open-source Chrome." \
FALSE "Install Dia – diagram creator" "Install Dia – diagram creator – easy and powerful" \
FALSE "Install Digikam" "Install Powerful tool for photos managment" \
FALSE "Install Dropbox client" "Install official Dropbox client with nemo support. Headless moder – run as user which will be using dropbox." \
FALSE "Install ebook reader" "Install ebook reader – calibre" \
FALSE "Install Eclipse IDE" "Install IDE for java programing" \
FALSE "Install fzf – CLI fuzzy finder" "Install fzf – CLI fuzzy finder. Git clone installation – run as user which will be using script" \
FALSE "Install Guake – gnome dropdown terminal" "Install Guake – gnome dropdown terminal" \
FALSE "Install HEX editor – bless" "Install hex editor – bless." \
FALSE "Install Inkscape – vector graphic editor" "Install vector graphic editor – Inkscape" \
FALSE "Install ISO images tool" "Install ISO images tool, mount, unmount, modify. - acetoneiso" \
FALSE "Install Nextcloud client" "Install Nextcloud client." \
FALSE "Install OCR Reader" "Install utilties to OCR read files." \
FALSE "Install Owncloud client" "Install Owncloud client." \
FALSE "Install PDF tools" "Install utilties to support pdf modifications  - merging, spliting, replacing pages etc." \
FALSE "Install Qalculate scientific calculator" "Install Qalculate scientific calculator" \
FALSE "Install QownNotes" "Install notepad with markdown support and todo list manager supporting sync." \
FALSE "Install qtCreator IDE" "Install IDE for qt programs" \
FALSE "Install sandboxing app – Firejail" "Install sandboxing app Firejail." \
FALSE "Install scanner support" "Install utilties to support scanner in Ubuntu." \
FALSE "Install sysadmin network utilties" "Install utilties to monitor network traffic e.g. nethogs, nmap, iftop, whois, net-tools etc." \
FALSE "Install task manager – TaskCoach" "Install powerful task manager TaskCoach" \
FALSE "Install Tellico – collections manager" "Install Tellico – collections manager – books, movies, coins etc." \
FALSE "Install VirtualBox" "Install Virtualbox virtual machines manager." \
FALSE "Install webcam application" "Install webcam application – cheese" \
FALSE "Replace notepad gedit with pluma" "Replace default gedit with powerful pluma notepad." \
FALSE "Replace filemanager Nautilus with Nemo" "Replace file manager Nautilus with more powerful Nemo" \
FALSE "Set Grub Timeout to 1 second" "Set Grub Timeout to 1 second" \
FALSE "Uninstall Ubuntu dock" "Uninstall annoying Ubuntu Gnome dock." \
TRUE "Clean packages" "Perform apt autoremove, clean and autoclean" \
--separator=":")

# Case function
IFS=":" 
for word in $response ; do 
 case $word in
 "Install archives tools") 
 SUMMARY+="`cat $DIR/scripts/install-archives-tools`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-archives-tools; " 
 ;;
 "Uninstall garbage Gnome/Ubuntu packages") 
 SUMMARY+="`cat $DIR/scripts/uninstall-garbage-packages`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/uninstall-garbage-packages; " 
 ;;
 "Install codecs") 
 SUMMARY+="`cat $DIR/scripts/install-codecs`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-codecs; " 
 ;;
 "Install Gnome tools") 
 SUMMARY+="`cat $DIR/scripts/install-gnome-tools`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-gnome-tools; " 
 ;;
 "Install language packages") 
 SUMMARY+="`cat $DIR/scripts/install-language-packages`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-language-packages; " 
 ;;
 "Install Libreoffice") 
 SUMMARY+="`cat $DIR/scripts/install-libreoffice`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-libreoffice; " 
 ;;
 "Install password manager") 
 SUMMARY+="`cat $DIR/scripts/install-password-manager`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-password-manager; " 
 ;;
 "Install Synaptic package manager") 
 SUMMARY+="`cat $DIR/scripts/install-synaptic`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-synaptic; " 
 ;;
 "Install Thunderbird") 
 SUMMARY+="`cat $DIR/scripts/install-thunderbird`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-thunderbird; " 
 ;;
 "Install useful system utilties") 
 SUMMARY+="`cat $DIR/scripts/install-system-utilties`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-system-utilties; " 
 ;;
 "Install VLC") 
 SUMMARY+="`cat $DIR/scripts/install-vlc`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-vlc; " 
 ;;
 "Upgrade packages") 
 SUMMARY+="`cat $DIR/scripts/perform-upgrade`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/perform-upgrade; " 
 ;;
 "Enable /tmp folder in RAM") 
 SUMMARY+="`cat $DIR/scripts/enable-tmp-ram`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/enable-tmp-ram; " 
 ;;
 "Install Amarok") 
 SUMMARY+="`cat $DIR/scripts/install-amarok`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-amarok; " 
 ;;
 "Install AMD-Nvidia graphics drivers") 
 SUMMARY+="`cat $DIR/scripts/install-amd-nvidia-drivers`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-amd-nvidia-drivers; " 
 ;;
 "Install Atom.io IDE") 
 SUMMARY+="`cat $DIR/scripts/install-atom`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-atom; " 
 ;;
 "Install Audacity audio editor") 
 SUMMARY+="`cat $DIR/scripts/install-audacity`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-audacity; " 
 ;;
 "Install batch photos utilties") 
 SUMMARY+="`cat $DIR/scripts/install-photo-utils`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-photo-utils; " 
 ;;
 "Install better laptop’s battery support") 
 SUMMARY+="`cat $DIR/scripts/install-battery-support`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-battery-support; " 
 ;;
 "Install bootable live USB creator – mkusb") 
 SUMMARY+="`cat $DIR/scripts/install-mkusb`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-mkusb; " 
 ;;
 "Install CD/DVD burner") 
 SUMMARY+="`cat $DIR/scripts/install-cd-dvd-burner`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-cd-dvd-burner; " 
 ;;
 "Install Chromium browser") 
 SUMMARY+="`cat $DIR/scripts/install-chromium`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-chromium; " 
 ;;
 "Install Dia – diagram creator") 
 SUMMARY+="`cat $DIR/scripts/install-dia`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-dia; " 
 ;;
 "Install Digikam") 
 SUMMARY+="`cat $DIR/scripts/install-digikam`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-digikam; " 
 ;;
 "Install Dropbox client") 
 SUMMARY+="`cat $DIR/scripts/install-dropbox`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-dropbox; " 
 ;;
 "Install ebook reader") 
 SUMMARY+="`cat $DIR/scripts/install-calibre`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-calibre; " 
 ;;
 "Install Eclipse IDE") 
 SUMMARY+="`cat $DIR/scripts/install-eclipse`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-eclipse; " 
 ;;
 "Install fzf – CLI fuzzy finder") 
 SUMMARY+="`cat $DIR/scripts/install-fzf`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-fzf; " 
 ;;
 "Install Guake – gnome dropdown terminal") 
 SUMMARY+="`cat $DIR/scripts/install-guake`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-guake; " 
 ;;
 "Install HEX editor – bless") 
 SUMMARY+="`cat $DIR/scripts/install-hex-editor`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-hex-editor; " 
 ;;
 "Install Inkscape – vector graphic editor") 
 SUMMARY+="`cat $DIR/scripts/install-inkscape`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-inkscape; " 
 ;;
 "Install ISO images tool") 
 SUMMARY+="`cat $DIR/scripts/install-acetoneiso`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-acetoneiso; " 
 ;;
 "Install Nextcloud client") 
 SUMMARY+="`cat $DIR/scripts/install-nextcloud`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-nextcloud; " 
 ;;
 "Install OCR Reader") 
 SUMMARY+="`cat $DIR/scripts/install-ocr`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-ocr; " 
 ;;
 "Install Owncloud client") 
 SUMMARY+="`cat $DIR/scripts/install-owncloud`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-owncloud; " 
 ;;
 "Install PDF tools") 
 SUMMARY+="`cat $DIR/scripts/install-pdf-tools`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-pdf-tools; " 
 ;;
 "Install Qalculate scientific calculator") 
 SUMMARY+="`cat $DIR/scripts/install-qalculate`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-qalculate; " 
 ;;
 "Install QownNotes") 
 SUMMARY+="`cat $DIR/scripts/install-qownnotes`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-qownnotes; " 
 ;;
 "Install qtCreator IDE") 
 SUMMARY+="`cat $DIR/scripts/install-qtcreator`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-qtcreator; " 
 ;;
 "Install sandboxing app – Firejail") 
 SUMMARY+="`cat $DIR/scripts/install-firejail`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-firejail; " 
 ;;
 "Install scanner support") 
 SUMMARY+="`cat $DIR/scripts/install-scanner-support`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-scanner-support; " 
 ;;
 "Install sysadmin network utilties") 
 SUMMARY+="`cat $DIR/scripts/install-sysadmin-network-tools`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-sysadmin-network-tools; " 
 ;;
 "Install task manager – TaskCoach") 
 SUMMARY+="`cat $DIR/scripts/install-taskcoach`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-taskcoach; " 
 ;;
 "Install Tellico – collections manager") 
 SUMMARY+="`cat $DIR/scripts/install-tellico`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-tellico; " 
 ;;
 "Install VirtualBox") 
 SUMMARY+="`cat $DIR/scripts/install-virtualbox`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-virtualbox; " 
 ;;
 "Install webcam application") 
 SUMMARY+="`cat $DIR/scripts/install-webcam-cheese`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-webcam-cheese; " 
 ;;
 "Replace notepad gedit with pluma") 
 SUMMARY+="`cat $DIR/scripts/replace-gedit-pluma`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/replace-gedit-pluma; " 
 ;;
 "Replace filemanager Nautilus with Nemo") 
 SUMMARY+="`cat $DIR/scripts/replace-nautilus-nemo`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/replace-nautilus-nemo; " 
 ;;
 "Set Grub Timeout to 1 second") 
 SUMMARY+="`cat $DIR/scripts/set-grub`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/set-grub; " 
 ;;
 "Uninstall Ubuntu dock") 
 SUMMARY+="`cat $DIR/scripts/uninstall-ubuntu-dock`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/uninstall-ubuntu-dock; " 
 ;;
 "Clean packages") 
 SUMMARY+="`cat $DIR/scripts/perform-cleanup`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/perform-cleanup; " 
 ;;
 esac 
done
unset IFS 

# Check if variable SUMMARY was set ('! -n'  = not null variable)
if [ ! -n "$SUMMARY" ]; then
              zenity --error --title="Installation aborted!" --text "Installation aborted!"
            else
              echo -e "$SUMMARY" | zenity --height=700 --width=1200 --text-info --title="Summary - commands to run" --text="$SUMMARY"

              # Check if OK was pressed
              if [ $? = 0 ] ; then
                  # OK pressed
                  pkexec -u `whoami` bash -c "cd $PWD; $COMMAND_TO_RUN"
                  zenity --info --text "All done!\nPress OK to quit."
              else
                  # Cancel pressed
                  zenity --error --text "Cancel pressed!"
              fi
fi
