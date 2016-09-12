#!/bin/bash
# 
# Usage: backup /path/to/folder [BackupName]
# The script will generate a file called "backup-YYYY-mm-dd.tar.gz" or, if the second parameter is given, "BackupName.tar.gz"
#
# This script required the installation of pv
# 

DATE=`date +%Y-%m-%d`
STANDARD_FILENAME="backup-$DATE"

tar cf - "$1" -P | pv -s $(du -sb "$1" | awk '{print $1}') | gzip > "${2:-$STANDARD_FILENAME}.tar.gz"