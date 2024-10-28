source tosh.conf
source ${mainfolder}/.toInf

arg=$1
echo "${arg}"

newfolder=${mainfolder}_${foldername}
newmain=${mainfolder}_${arg}

echo "moving ${mainfolder} to ${newfolder}..."
mv ${mainfolder} ${newfolder}

echo "moving ${newmain} to ${mainfolder}..."
mv ${newmain} ${mainfolder}

echo "all done!"
