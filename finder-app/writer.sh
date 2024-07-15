#!/bin/bash

# check both argumet available
if [ $# -ne 2 ]; then
	echo "ERROR: inputs are not equal to 2";
	echo "USAGE: ./writer.sh <directory> <string>";
	exit 1;
fi

# add argument in vartables
writefile=$1
writestr=$2

# create a directory if path does not exist
mkdir -p "$(dirname "$writefile")"

# write the string to file, over write any existing file
echo $writestr >  $writefile

# check if file successfully created
if [ $? -ne 0 ]; then
	echo "Error: The file $writefile could not be created"
       exit 1;
fi

echo "the file $writefile was successfully created with content: $writestr"


