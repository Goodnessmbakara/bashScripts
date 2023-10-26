# Backup Script

This Bash script, named "backup.sh," is designed to perform a backup of files within a specified target directory to a destination directory. The script checks if the number of arguments is correct and if the provided paths are valid. It then creates a compressed archive file containing files that were modified within the last 24 hours and moves the backup to the destination directory.

## Usage

To use the script, follow the syntax below:

./backup.sh target_directory_name destination_directory_name


Replace `target_directory_name` with the path to the directory you want to back up and `destination_directory_name` with the path to the directory where you want to store the backup.

## Script Tasks

The script performs the following tasks:

1. Checks if the correct number of arguments is provided (2 arguments expected).
2. Validates that the provided paths are valid directories.
3. Captures and stores the target and destination directories.
4. Generates a unique backup file name based on the current timestamp.
5. Defines useful variables to simplify directory navigation.
6. Navigates to the destination directory.
7. Navigates to the target directory.
8. Calculates the timestamp for 24 hours ago.
9. Locates files within the target directory using the `find` command.
10. Checks the last modification time of each file.
11. Adds files modified within the last 24 hours to the list of files to back up.
12. Creates a compressed archive file containing the selected files.
13. Moves the backup file to the destination directory.

## Notes

- The script uses `find` to locate files within the target directory. It checks files for modification time to include them in the backup.
- If no files were modified within the last 24 hours, the script will display "No files to backup."

Congratulations! You've completed the final project for your course using this script.

Feel free to customize this script and its behavior to suit your specific backup requirements.

Please ensure that the paths, permissions, and other settings are correctly configured for your system before running the script.
