#!/bin/bash
#export FILE_PREFIX=./files/file
#export FILES_TO_KEEP=3
export FILELISTNAME=myfilelist.txt

REQPARMNUM=2
if [ $# -lt $REQPARMNUM ]
then
	echo "Some non defaulted parameters are missing"
	echo "USAGE: " $(basename $0) FILENAME_PREFIX FILE_NUMBER_TO_KEEP
	exit 254
fi

FILE_PREFIX=$1
FILES_TO_KEEP=$2

ls -r1 ${FILE_PREFIX}* > ${FILELISTNAME}
nr=$(cat "${FILELISTNAME}" | wc -l); ((nr=$nr-${FILES_TO_KEEP}))
rm -fv $(tail -$nr ${FILELISTNAME})
rm -fv $FILELISTNAME
