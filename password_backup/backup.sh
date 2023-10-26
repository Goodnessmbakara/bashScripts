#!/bin/bash

# This checks if the number of arguments is correct
# If the number of arguments is incorrect ( $# != 2) print error message and exit
if [[ $# != 2 ]]
then
  echo "backup.sh target_directory_name destination_directory_name"
  exit
fi

# This checks if argument 1 and argument 2 are valid directory paths
if [[ ! -d "$1" ]]
then
  echo "Invalid target directory path provided: $1"
  exit
fi

if [[ ! -d "$2" ]]
then
  echo "Invalid destination directory path provided: $2"
  exit
fi

# [TASK 1]
targetDirectory=$1
destinationDirectory=$2


# [TASK 2]
echo "$targetDirectory"
echo "$destinationDirectory"

# [TASK 3]
currentTS=$(date +%s)

# [TASK 4]
backupFileName="backup-$currentTS.tar.gz"

# We're going to:
# 1: Go into the target directory
# 2: Create the backup file
# 3: Move the backup file to the destination directory

# To make things easier, we will define some useful variables...

# [TASK 5]
origAbsPath=$(pwd)

# [TASK 6]
cd "$destinationDirectory"
destDirAbsPath=$(pwd)

# [TASK 7]
cd "$origAbsPath/$targetDirectory"

# [TASK 8]
yesterdayTS=$((currentTS - 24 * 60 * 60))

declare -a toBackup

for file in $(ls -R) # [TASK 9]
do
  # [TASK 10]
  last_modified=$(date -r "$file" +%s)
  if [ $last_modified -gt $yesterdayTS ];
  then
    # [TASK 11]
    toBackup+=("$file")
  fi
done

for file in "${toBackup[@]}"; do
  echo "File to backup: $file"
done

# Check if there are files to backup
if [ ${#toBackup[@]} -eq 0 ]
then
  echo "No files to backup"
  exit
fi

# [TASK 12]
tar -czvf "$backupFileName" "${toBackup[@]}"

# [TASK 13]
mv "$backupFileName" "$destDirAbsPath"
# Congratulations! You completed the final project for this course!
