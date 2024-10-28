source tosh.conf
source ${mainfolder}/.toInf

arg=$1

if [ -z "$arg" ]; then
	printf "NO ARGUMENTS!!!! THIS.DIE \nif you want to get help, do \"to.sh -h\" or \"to.sh --help\" :D"
	exit
elif [ $arg == "-h" ] || [ $arg == "--help" ]; then
	printf "wow useful help message"
	exit
fi

newfolder=${mainfolder}_${foldername}
newmain=${mainfolder}_${arg}

printf "moving ${mainfolder} to ${newfolder}...\n"
mv ${mainfolder} ${newfolder}

printf "moving ${newmain} to ${mainfolder}...\n"
mv ${newmain} ${mainfolder}

echo "all done!"
