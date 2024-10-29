#! /usr/bin/bash

source tosh.conf
arg=$1

if [ -z "$arg" ]; then
	printf "NO ARGUMENTS!!!! THIS.DIE \nif you want to get help, do \"to.sh -h\" or \"to.sh --help\" :D \n"
	exit
elif [ $arg == "-n" ] || [ $arg == "--name" ]; then
	printf "naming folder..."
	cp template.toInf $mainfolder/.toInf
	$editor $mainfolder/.toInf
	exit
elif [ $arg == "-h" ] || [ $arg == "--help" ]; then
	shh="\e[1;30m"
	normal="\e[0m"

	printf "${shh}psttt if you want to use to.sh as a regular command do \"alias to.sh='bash to.sh'\"${normal}\n"
	printf "to.sh is a simple script designed to solve a simple problem: Jade Harley doesn't know how to set up subdomains on apache servers!!! :(\n"	
	printf "to give a folder a to.shName, run \"to.sh [--name/-n] [to.shName]\"\n"
	printf "to switch what folder is on main, run \"to.sh [to.shName]\"\n"
	printf "to change your main folder's name, or to change what text editor is used, edit tosh.conf! ${shh}if you update your main folder's name, you'll have to update each folder... MANUALLY :(${normal}\n" 
	exit
fi

source ${mainfolder}/.toInf

newfolder=${mainfolder}_${foldername}
newmain=${mainfolder}_${arg}

printf "moving ${mainfolder} to ${newfolder}...\n"
mv ${mainfolder} ${newfolder}

printf "moving ${newmain} to ${mainfolder}...\n"
mv ${newmain} ${mainfolder}

echo "all done!"
