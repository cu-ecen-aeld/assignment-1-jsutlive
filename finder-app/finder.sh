# finder.sh: find text in all files of a directory
# J. Sutlive 12-14-2025
#
#!/bin/sh

# Validate input arguments
if [ ! $# -eq 2 ] ;
then
	echo "Not enough arguments given. Please provide a file directory and search string." >&2
	exit 1
fi

if [ ! -d $1 ] ;
then
	echo "First argument is not a valid filepath." >&2
	exit 1
fi

# assign input arguments to variables
filesdir=$1
searchstr=$2

# determine number of files in directory and find search matches
numFiles=$(ls "${filesdir}"| wc -l)
numMatches=$(grep -rnw "${filesdir}" -e ${searchstr} | wc -w) 

# Print result
echo "The number of files are ${numFiles} and the number of matching lines are ${numMatches}."

