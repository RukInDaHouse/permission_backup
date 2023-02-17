#!/bin/bash
DATE=$(date '+%Y.%m.%d')
EXACT_TIME=$(date '+%Y.%m.%d %T')
BASE_DIR=/var/backup-permissions

#Prepare log directory & file
if [ ! -d $BASE_DIR/logs ]
then
    mkdir -p $BASE_DIR/logs
fi

if [ ! -d $BASE_DIR/backups ]
then
    mkdir -p $BASE_DIR/backups
fi
touch $BASE_DIR/logs/backup_permissions_process_$DATE.log
touch $BASE_DIR/logs/backup_permissions_error_$DATE.log

#Start backup permission
echo "Start backup process in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /bin > $BASE_DIR/backups/bin_permissions.acl && echo "Finish backup /bin directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /boot > $BASE_DIR/backups/boot_permissions.acl && echo "Finish backup /boot directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /dev > $BASE_DIR/backups/dev_permissions.acl && echo "Finish backup /dev directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /lib > $BASE_DIR/backups/lib_permissions.acl && echo "Finish backup /lib directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /opt > $BASE_DIR/backups/opt_permissions.acl && echo "Finish backup /opt directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /root > $BASE_DIR/backups/root_permissions.acl && echo "Finish backup /root directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /sbin > $BASE_DIR/backups/sbin_permissions.acl && echo "Finish backup /sbin directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /sys > $BASE_DIR/backups/sys_permissions.acl && echo "Finish backup /sys directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /usr > $BASE_DIR/backups/usr_permissions.acl && echo "Finish backup /usr directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
echo "Finish backup process in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
