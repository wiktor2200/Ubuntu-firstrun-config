#!/bin/bash
#===============================================================================
#          FILE:  ubuntu-firstrun-config.bash
#         USAGE:  sudo bash ./ubuntu-firstrun-config.bash
#   DESCRIPTION:  The script enables installation and configuration of some
#                 essential apps and utilties that make your Ubuntu more
#                 useful and powerful.
#       OPTIONS:  ---
#  REQUIREMENTS:  zenity (preinstalled with Ubuntu)
#         NOTES:  ---
#        AUTHOR:  wiktor2200, https://github.com/wiktor2200
#          REPO:  https://github.com/wiktor2200/Ubuntu-firstrun-config
#       CREATED:  2018-06-12
#       UPDATED:  2021-02-06
#===============================================================================
# This script is generated using: generate-script-from-config.bash from repo: https://github.com/wiktor2200/Ubuntu-firstrun-config

# Get script's main directory
DIR=`dirname $0`

# Render zenity menu
response=$(zenity --height=700 --width=1200 --window-icon=$DIR/ubuntu_icon.png --list --checklist --title="Configure your Ubuntu!" --column="State" --column="Task" --column="Description" TRUE "0Upgrade - Upgrade packages" "Perform apt dist-upgrade" \
TRUE "Cleanup - Clean packages" "Perform apt autoremove, clean and autoclean" \
TRUE "Cleanup - Uninstall garbage Gnome and Ubuntu packages" "Uninstall some garbage packages e.g. orca, shotwell, rhythmbox, totem, transmission" \
TRUE "Documents - Install Libreoffice" "Install full Libreoffice package with language packages." \
TRUE "IDE - Install Visual Studio Code IDE" "Install Visual Studio Code - easy, customizable and powerful IDE for almost all languages." \
TRUE "Multimedia - Install VLC" "Install popular media player - both music and videos." \
TRUE "Useful - Install password manager" "Install password manager – keepassXC" \
TRUE "Utilties - Install archives tools" "Support for zip, rar, 7zip etc." \
TRUE "Utilties - Install codecs" "Codecs to support common audio, video formats and additional fonts." \
TRUE "Utilties - Install Gnome tools" "Install Gnome settings managers and utils." \
TRUE "Utilties - Install language packages" "Installing language packages for your locale different than English." \
TRUE "Utilties - Install useful system utilties" "Install Partitioning tools, space usage tools, hardware info tools." \
TRUE "Utilties - Replace default snap packages with native Gnome apps." "Replace default snap packages with native Gnome apps." \
FALSE "Cleanup - Uninstall Ubuntu dock" "Uninstall Ubuntu Gnome dock." \
FALSE "Developer - Install Docker" "Install Docker from snap package manager." \
FALSE "Developer - Install VirtualBox" "Install Virtualbox virtual machines manager." \
FALSE "Documents - Install ebook reader" "Install ebook reader – calibre" \
FALSE "Documents - Install OCR Reader" "Install utilties to OCR read files." \
FALSE "Documents - Install PDF tools" "Install utilties to support pdf modifications  - merging, spliting, replacing pages etc." \
FALSE "Documents - Install QownNotes" "Install notepad with markdown support and todo list manager supporting sync." \
FALSE "Fixes - Fix top panel icons" "Fix top panel icons on systems upgraded from 16.04" \
FALSE "Graphics - Install Dia – diagram creator" "Install Dia – diagram creator – easy and powerful" \
FALSE "Graphics - Install Gnome Paint - replacement for MSPaint." "Install Gnome Paint - Linux alternative for MSPaint." \
FALSE "Graphics - Install Inkscape – vector graphic editor" "Install vector graphic editor – Inkscape" \
FALSE "Hardware - Install better laptop's battery support" "Install better laptop's battery support. Recommended on laptops." \
FALSE "Hardware - Install scanner support" "Install utilties to support scanner in Ubuntu." \
FALSE "Hardware - Install webcam application" "Install webcam application – cheese" \
FALSE "IDE - Install Atom.io IDE" "Install easy to customize IDE – Atom.io" \
FALSE "IDE - Install Eclipse IDE" "Install IDE for java programing" \
FALSE "IDE - Install Powerful HEX editor – bless" "Install hex editor - bless - more powerful, but needs more dependencies. – bless." \
FALSE "IDE - Install qtCreator IDE" "Install IDE for qt programs" \
FALSE "IDE - Install Simple HEX editor - ghex" "Install simple Gnome hex editor." \
FALSE "Multimedia - Install Amarok" "Install powerful music player – Amarok" \
FALSE "Multimedia - Install Audacity audio editor" "Install Audacity audio editor" \
FALSE "Network - Install sysadmin network utilties" "Install utilties to monitor network traffic e.g. nethogs, nmap, iftop, whois, net-tools etc." \
FALSE "Performance - Enable tmp folder in RAM" "Increase efficiency of your system and enable tmp folder in RAM. Recommended if more than 8GB of RAM" \
FALSE "Performance - Remove swapfile" "Removing of swapfile is recommended when using ssd drive - to increase it's life. When swap is off hibernation is disabled!" \
FALSE "Photos - Install batch photos utilties" "Install utilties to batch modify your photos and metadata e.g. aaphoto, exiv2" \
FALSE "Photos - Install Digikam" "Install Powerful tool for photos managment" \
FALSE "Storage - Install Dropbox client" "Install official Dropbox client with nemo support. Headless moder – run as user which will be using dropbox." \
FALSE "Storage - Install Nextcloud client" "Install Nextcloud client." \
FALSE "Storage - Install Owncloud client" "Install Owncloud client." \
FALSE "System - Install Cinnamon desktop manager" "Install Cinnamon desktop manager" \
FALSE "Useful - Install Chromium browser" "Install open-source Chromium browser. Open-source Chrome." \
FALSE "Useful - Install ClamAV Antivirus" "Install and configure ClamAV Antivirus" \
FALSE "Useful - Install Kazam desktop recorder" "Install Kazam - simple desktop recorder" \
FALSE "Useful - Install Qalculate scientific calculator" "Install Qalculate scientific calculator" \
FALSE "Useful - Install Slack" "Install Slack team collaboration tool from snap package." \
FALSE "Useful - Install task manager – TaskCoach" "Install powerful task manager TaskCoach" \
FALSE "Useful - Install Tellico – collections manager" "Install Tellico – collections manager – books, movies, coins etc." \
FALSE "Useful - Install Thunderbird" "Install Thunderbird mail client" \
FALSE "Utilties - Install AMD-Nvidia graphics drivers" "Install Install AMD-Nvidia graphics drivers" \
FALSE "Utilties - Install bootable live USB creator – mkusb" "Install bootable live USB creator – mkusb" \
FALSE "Utilties - Install CD-DVD burner" "Install CD-DVD burner – if you have disk drive" \
FALSE "Utilties - Install fzf – CLI fuzzy finder" "Install fzf – CLI fuzzy finder. Git clone installation – run as user which will be using script" \
FALSE "Utilties - Install Guake – gnome dropdown terminal" "Install Guake – gnome dropdown terminal" \
FALSE "Utilties - Install ISO images tool" "Install ISO images tool, mount, unmount, modify. - acetoneiso" \
FALSE "Utilties - Install sandboxing app – Firejail" "Install sandboxing app Firejail." \
FALSE "Utilties - Install Synaptic package manager" "Install Synaptic package manager" \
FALSE "System - Replace filemanager Nautilus with Nemo" "Replace file manager Nautilus with more powerful Nemo" \
FALSE "System - Replace notepad gedit with pluma" "Replace default gedit with powerful pluma notepad." \
FALSE "System - Set Grub Timeout to 1 second" "Set Grub Timeout to 1 second" \
FALSE "System - Show hidden autostart system entries" "Show hidden autostart system entries" \
FALSE "Cleanup - Uninstall Ubuntu 16.04 old dependencies." "Uninstall 16.04 garbage dependencies after upgrade to 18.04." \
--separator=":")

# Case function
IFS=":" 
for word in $response ; do 
 case $word in
 "0Upgrade - Upgrade packages") 
 SUMMARY+="`cat $DIR/scripts/perform-upgrade`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/perform-upgrade; " 
 ;;
 "Cleanup - Clean packages") 
 SUMMARY+="`cat $DIR/scripts/perform-cleanup`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/perform-cleanup; " 
 ;;
 "Cleanup - Uninstall garbage Gnome and Ubuntu packages") 
 SUMMARY+="`cat $DIR/scripts/uninstall-garbage-packages`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/uninstall-garbage-packages; " 
 ;;
 "Documents - Install Libreoffice") 
 SUMMARY+="`cat $DIR/scripts/install-libreoffice`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-libreoffice; " 
 ;;
 "IDE - Install Visual Studio Code IDE") 
 SUMMARY+="`cat $DIR/scripts/install-vs-code`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-vs-code; " 
 ;;
 "Multimedia - Install VLC") 
 SUMMARY+="`cat $DIR/scripts/install-vlc`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-vlc; " 
 ;;
 "Useful - Install password manager") 
 SUMMARY+="`cat $DIR/scripts/install-password-manager`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-password-manager; " 
 ;;
 "Utilties - Install archives tools") 
 SUMMARY+="`cat $DIR/scripts/install-archives-tools`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-archives-tools; " 
 ;;
 "Utilties - Install codecs") 
 SUMMARY+="`cat $DIR/scripts/install-codecs`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-codecs; " 
 ;;
 "Utilties - Install Gnome tools") 
 SUMMARY+="`cat $DIR/scripts/install-gnome-tools`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-gnome-tools; " 
 ;;
 "Utilties - Install language packages") 
 SUMMARY+="`cat $DIR/scripts/install-language-packages`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-language-packages; " 
 ;;
 "Utilties - Install useful system utilties") 
 SUMMARY+="`cat $DIR/scripts/install-system-utilties`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-system-utilties; " 
 ;;
 "Utilties - Replace default snap packages with native Gnome apps.") 
 SUMMARY+="`cat $DIR/scripts/replace-snap-packages`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/replace-snap-packages; " 
 ;;
 "Cleanup - Uninstall Ubuntu dock") 
 SUMMARY+="`cat $DIR/scripts/uninstall-ubuntu-dock`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/uninstall-ubuntu-dock; " 
 ;;
 "Developer - Install Docker") 
 SUMMARY+="`cat $DIR/scripts/install-docker`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-docker; " 
 ;;
 "Developer - Install VirtualBox") 
 SUMMARY+="`cat $DIR/scripts/install-virtualbox`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-virtualbox; " 
 ;;
 "Documents - Install ebook reader") 
 SUMMARY+="`cat $DIR/scripts/install-calibre`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-calibre; " 
 ;;
 "Documents - Install OCR Reader") 
 SUMMARY+="`cat $DIR/scripts/install-ocr`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-ocr; " 
 ;;
 "Documents - Install PDF tools") 
 SUMMARY+="`cat $DIR/scripts/install-pdf-tools`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-pdf-tools; " 
 ;;
 "Documents - Install QownNotes") 
 SUMMARY+="`cat $DIR/scripts/install-qownnotes`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-qownnotes; " 
 ;;
 "Fixes - Fix top panel icons") 
 SUMMARY+="`cat $DIR/scripts/fix-top-panel-icons`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/fix-top-panel-icons; " 
 ;;
 "Graphics - Install Dia – diagram creator") 
 SUMMARY+="`cat $DIR/scripts/install-dia`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-dia; " 
 ;;
 "Graphics - Install Gnome Paint - replacement for MSPaint.") 
 SUMMARY+="`cat $DIR/scripts/install-gnome-paint`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-gnome-paint; " 
 ;;
 "Graphics - Install Inkscape – vector graphic editor") 
 SUMMARY+="`cat $DIR/scripts/install-inkscape`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-inkscape; " 
 ;;
 "Hardware - Install better laptop's battery support") 
 SUMMARY+="`cat $DIR/scripts/install-battery-support`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-battery-support; " 
 ;;
 "Hardware - Install scanner support") 
 SUMMARY+="`cat $DIR/scripts/install-scanner-support`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-scanner-support; " 
 ;;
 "Hardware - Install webcam application") 
 SUMMARY+="`cat $DIR/scripts/install-webcam-cheese`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-webcam-cheese; " 
 ;;
 "IDE - Install Atom.io IDE") 
 SUMMARY+="`cat $DIR/scripts/install-atom`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-atom; " 
 ;;
 "IDE - Install Eclipse IDE") 
 SUMMARY+="`cat $DIR/scripts/install-eclipse`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-eclipse; " 
 ;;
 "IDE - Install Powerful HEX editor – bless") 
 SUMMARY+="`cat $DIR/scripts/install-hex-bless-editor`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-hex-bless-editor; " 
 ;;
 "IDE - Install qtCreator IDE") 
 SUMMARY+="`cat $DIR/scripts/install-qtcreator`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-qtcreator; " 
 ;;
 "IDE - Install Simple HEX editor - ghex") 
 SUMMARY+="`cat $DIR/scripts/install-hex-gnome-editor`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-hex-gnome-editor; " 
 ;;
 "Multimedia - Install Amarok") 
 SUMMARY+="`cat $DIR/scripts/install-amarok`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-amarok; " 
 ;;
 "Multimedia - Install Audacity audio editor") 
 SUMMARY+="`cat $DIR/scripts/install-audacity`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-audacity; " 
 ;;
 "Network - Install sysadmin network utilties") 
 SUMMARY+="`cat $DIR/scripts/install-sysadmin-network-tools`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-sysadmin-network-tools; " 
 ;;
 "Performance - Enable tmp folder in RAM") 
 SUMMARY+="`cat $DIR/scripts/enable-tmp-ram`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/enable-tmp-ram; " 
 ;;
 "Performance - Remove swapfile") 
 SUMMARY+="`cat $DIR/scripts/remove-swapfile`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/remove-swapfile; " 
 ;;
 "Photos - Install batch photos utilties") 
 SUMMARY+="`cat $DIR/scripts/install-photo-utils`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-photo-utils; " 
 ;;
 "Photos - Install Digikam") 
 SUMMARY+="`cat $DIR/scripts/install-digikam`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-digikam; " 
 ;;
 "Storage - Install Dropbox client") 
 SUMMARY+="`cat $DIR/scripts/install-dropbox`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-dropbox; " 
 ;;
 "Storage - Install Nextcloud client") 
 SUMMARY+="`cat $DIR/scripts/install-nextcloud`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-nextcloud; " 
 ;;
 "Storage - Install Owncloud client") 
 SUMMARY+="`cat $DIR/scripts/install-owncloud`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-owncloud; " 
 ;;
 "System - Install Cinnamon desktop manager") 
 SUMMARY+="`cat $DIR/scripts/install-cinnamon`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-cinnamon; " 
 ;;
 "Useful - Install Chromium browser") 
 SUMMARY+="`cat $DIR/scripts/install-chromium`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-chromium; " 
 ;;
 "Useful - Install ClamAV Antivirus") 
 SUMMARY+="`cat $DIR/scripts/install-antivir`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-antivir; " 
 ;;
 "Useful - Install Kazam desktop recorder") 
 SUMMARY+="`cat $DIR/scripts/install-desktop-recorder`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-desktop-recorder; " 
 ;;
 "Useful - Install Qalculate scientific calculator") 
 SUMMARY+="`cat $DIR/scripts/install-qalculate`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-qalculate; " 
 ;;
 "Useful - Install Slack") 
 SUMMARY+="`cat $DIR/scripts/install-slack`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-slack; " 
 ;;
 "Useful - Install task manager – TaskCoach") 
 SUMMARY+="`cat $DIR/scripts/install-taskcoach`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-taskcoach; " 
 ;;
 "Useful - Install Tellico – collections manager") 
 SUMMARY+="`cat $DIR/scripts/install-tellico`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-tellico; " 
 ;;
 "Useful - Install Thunderbird") 
 SUMMARY+="`cat $DIR/scripts/install-thunderbird`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-thunderbird; " 
 ;;
 "Utilties - Install AMD-Nvidia graphics drivers") 
 SUMMARY+="`cat $DIR/scripts/install-amd-nvidia-drivers`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-amd-nvidia-drivers; " 
 ;;
 "Utilties - Install bootable live USB creator – mkusb") 
 SUMMARY+="`cat $DIR/scripts/install-mkusb`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-mkusb; " 
 ;;
 "Utilties - Install CD-DVD burner") 
 SUMMARY+="`cat $DIR/scripts/install-cd-dvd-burner`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-cd-dvd-burner; " 
 ;;
 "Utilties - Install fzf – CLI fuzzy finder") 
 SUMMARY+="`cat $DIR/scripts/install-fzf`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-fzf; " 
 ;;
 "Utilties - Install Guake – gnome dropdown terminal") 
 SUMMARY+="`cat $DIR/scripts/install-guake`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-guake; " 
 ;;
 "Utilties - Install ISO images tool") 
 SUMMARY+="`cat $DIR/scripts/install-acetoneiso`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-acetoneiso; " 
 ;;
 "Utilties - Install sandboxing app – Firejail") 
 SUMMARY+="`cat $DIR/scripts/install-firejail`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-firejail; " 
 ;;
 "Utilties - Install Synaptic package manager") 
 SUMMARY+="`cat $DIR/scripts/install-synaptic`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/install-synaptic; " 
 ;;
 "System - Replace filemanager Nautilus with Nemo") 
 SUMMARY+="`cat $DIR/scripts/replace-nautilus-nemo`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/replace-nautilus-nemo; " 
 ;;
 "System - Replace notepad gedit with pluma") 
 SUMMARY+="`cat $DIR/scripts/replace-gedit-pluma`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/replace-gedit-pluma; " 
 ;;
 "System - Set Grub Timeout to 1 second") 
 SUMMARY+="`cat $DIR/scripts/set-grub`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/set-grub; " 
 ;;
 "System - Show hidden autostart system entries") 
 SUMMARY+="`cat $DIR/scripts/show-hidden-autostart-entries`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/show-hidden-autostart-entries; " 
 ;;
 "Cleanup - Uninstall Ubuntu 16.04 old dependencies.") 
 SUMMARY+="`cat $DIR/scripts/uninstall-old-1604-dependencies`\n\n" 
 COMMAND_TO_RUN+="bash $DIR/scripts/uninstall-old-1604-dependencies; " 
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
