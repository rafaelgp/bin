#!/usr/bin/env bash

BACKUPFILE='/var/www/moodledata.tar.gz'
BACKUPFILETEMP='/var/www/temp_moodledata.tar.gz'
SOURCEDIR='/var/www/moodledata/'

# Rename backup file
if [ -f $BACKUPFILE ]; then
    mv $BACKUPFILE $BACKUPFILETEMP
fi
# Run backup. Delete temp copy if succeded
tar -cpzfP $BACKUPFILE $SOURCEDIR && rm -f BACKUPFILETEMP
# All OK
exit 0

# Run backup monthly on the first day at midnight
# crontab -e
# 0 0 1 * * /bin/bash ~/bin/misc/backup_moodledata.sh

# 1. Minutes: 0 to 59
# 2. Hours: 0 to 23
# 3. Day of Month: 1 to 31
# 4. Month: 1 to 12
# 5. Day of Week: 0 to 6
# 6. Command
