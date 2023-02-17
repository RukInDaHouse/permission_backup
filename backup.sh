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
getfacl -pR /etc > $BASE_DIR/backups/etc_permissions.acl && echo "Finish backup /etc directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /home > $BASE_DIR/backups/home_permissions.acl && echo "Finish backup /home directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /lib > $BASE_DIR/backups/lib_permissions.acl && echo "Finish backup /lib directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /lib64 > $BASE_DIR/backups/lib64_permissions.acl && echo "Finish backup /lib64 directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /lost+found > $BASE_DIR/backups/lost+found_permissions.acl && echo "Finish backup /lost+found directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /media > $BASE_DIR/backups/media_permissions.acl && echo "Finish backup /media directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /mnt > $BASE_DIR/backups/mnt_permissions.acl && echo "Finish backup /mnt directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /opt > $BASE_DIR/backups/opt_permissions.acl && echo "Finish backup /opt directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /proc > $BASE_DIR/backups/proc_permissions.acl && echo "Finish backup /proc directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /root > $BASE_DIR/backups/root_permissions.acl && echo "Finish backup /root directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /run > $BASE_DIR/backups/run_permissions.acl && echo "Finish backup /run directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /sbin > $BASE_DIR/backups/sbin_permissions.acl && echo "Finish backup /sbin directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /srv > $BASE_DIR/backups/srv_permissions.acl && echo "Finish backup /srv directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /sys > $BASE_DIR/backups/sys_permissions.acl && echo "Finish backup /sys directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /tmp > $BASE_DIR/backups/tmp_permissions.acl && echo "Finish backup /tmp directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /usr > $BASE_DIR/backups/usr_permissions.acl && echo "Finish backup /usr directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
getfacl -pR /var > $BASE_DIR/backups/var_permissions.acl && echo "Finish backup /var directory in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
echo "Finish backup process in $EXACT_TIME" >> $BASE_DIR/logs/backup_permissions_process_$DATE.log
