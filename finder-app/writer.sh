# writer.sh: Write text to specified path/file
# J. Sutlive 12-14-2025
#
#!/bin/sh

# Validate arguments
if [ ! $# -eq 2 ]
then
	echo $#
	echo "Incorrect number of arguments"
	echo "Provide full path to filename and text to write to file"
	exit 1
fi

# Assign variables
writefile=$1
writestr=$2
writedir=$(dirname ${writefile})

# If directory does not exist, make directory
if [ ! -d "${writedir}" ]
then
	mkdir -p ${writedir}
fi	

# Write file
echo ${writestr} > ${writefile}
