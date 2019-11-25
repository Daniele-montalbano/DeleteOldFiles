# DeleteOldFiles
This is a simple Unix Bash script to delete the old files contained in a folder and keep just the n newest files.
The files must have the same prefix in the name.

To run the script use this command
"svecchiafile.sh FILENAME_PREFIX FILE_NUMBER_TO_KEEP"

For example the command "svecchiafile.sh "./filefolder/filename" 3" will keep the newest 3 files with the name starting with the prefix "filename" cointaned in the folder filefolder.
