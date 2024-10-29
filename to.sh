source tosh.conf
source ${mainfolder}/.toInf


arg=$1

if [ -z "$arg" ]; then
	printf "NO ARGUMENTS!!!! THIS.DIE \nif you want to get help, do \"to.sh -h\" or \"to.sh --help\" :D \n"
	exit
elif [ $arg == "-n" ] || [ $arg == "--name" ]; then
	printf "dummy test for naming argument"
	exit
elif [ $arg == "-h" ] || [ $arg == "--help" ]; then
	shh="\e[1;30m"
	normal="\e[0m"

	printf "${shh}psttt if you want to use to.sh as a regular command do \"alias to.sh='bash to.sh'\"${normal}\n"
	printf "to.sh is a program designed to solve a very simple problem: Jade Harley doesn't know how to set up subdomains on apache servers!!! :("	
	exit
fi

newfolder=${mainfolder}_${foldername}
newmain=${mainfolder}_${arg}

printf "moving ${mainfolder} to ${newfolder}...\n"
mv ${mainfolder} ${newfolder}

printf "moving ${newmain} to ${mainfolder}...\n"
mv ${newmain} ${mainfolder}

echo "all done!"
