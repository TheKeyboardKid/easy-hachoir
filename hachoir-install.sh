#!bin/bash

#This script will install all of the things for hachoir to work
#because=lazy
# no gaurantee on quality

# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"

#make sure only root can run out script because sudo'ing can cause issues
if [[ $EUID -ne 0 ]]; then
  tput setaf 1; echo "This script must be run as root. Sad I know..." 1>&2
  tput sgr0;
    exit 1
fi

tput bold;
tput setaf 6; echo $"



   ▄█    █▄       ▄████████  ▄████████    ▄█    █▄     ▄██████▄   ▄█     ▄████████       ▄█  ███▄▄▄▄      ▄████████     ███        ▄████████  ▄█        ▄█
  ███    ███     ███    ███ ███    ███   ███    ███   ███    ███ ███    ███    ███      ███  ███▀▀▀██▄   ███    ███ ▀█████████▄   ███    ███ ███       ███
  ███    ███     ███    ███ ███    █▀    ███    ███   ███    ███ ███▌   ███    ███      ███▌ ███   ███   ███    █▀     ▀███▀▀██   ███    ███ ███       ███
 ▄███▄▄▄▄███▄▄   ███    ███ ███         ▄███▄▄▄▄███▄▄ ███    ███ ███▌  ▄███▄▄▄▄██▀      ███▌ ███   ███   ███            ███   ▀   ███    ███ ███       ███
▀▀███▀▀▀▀███▀  ▀███████████ ███        ▀▀███▀▀▀▀███▀  ███    ███ ███▌ ▀▀███▀▀▀▀▀        ███▌ ███   ███ ▀███████████     ███     ▀███████████ ███       ███
  ███    ███     ███    ███ ███    █▄    ███    ███   ███    ███ ███  ▀███████████      ███  ███   ███          ███     ███       ███    ███ ███       ███
  ███    ███     ███    ███ ███    ███   ███    ███   ███    ███ ███    ███    ███      ███  ███   ███    ▄█    ███     ███       ███    ███ ███▌    ▄ ███▌    ▄
  ███    █▀      ███    █▀  ████████▀    ███    █▀     ▀██████▀  █▀     ███    ███      █▀    ▀█   █▀   ▄████████▀     ▄████▀     ███    █▀  █████▄▄██ █████▄▄██
                                                                        ███    ███                                                           ▀         ▀


"
echo "Did you see how obnoxious that was? At least you don't have to chain packages together manually...."
tput sgr0;
sleep 2

tput setaf 3; "We're going to install some pre-reqs for hachoir to work properly - you may already have them installed"
tput sgr0;
sleep2

#installing python
apt-get install python -y

tput setaf 3; echo "Now installing hachoir-metadata"
tput sgr0;
sleep2

#Installing hachoir-metatdata
apt-get install python-hachoir-metadata -y

tput setaf 3; echo "Now installing hachoir-urwid"
tput sgr0;
sleep2

#Installing hachoir-urwid
apt-get install python-hachoir-urwid -y

tput setaf 3; echo "Now installing hachoir-wx"
tput sgr0;
sleep2

#Installing hachoir-wx
apt-get install python-hachoir-wx -y

echo "Everything should be installed now - just run hachoi-urwid <filename> and you have fun!!"
