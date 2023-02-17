#!/bin/bash
DATE=$(date '+%Y.%m.%d')
EXACT_TIME=$(date '+%Y.%m.%d %T')
BASE_DIR=/var/backup-permissions

#Start restore permission
echo "Start restore process in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/bin_permissions.acl && echo "Finish restore /bin directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/boot_permissions.acl && echo "Finish restore /boot directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/dev_permissions.acl && echo "Finish restore /dev directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/etc_permissions.acl && echo "Finish restore /etc directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/home_permissions.acl && echo "Finish restore /home directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/lib_permissions.acl && echo "Finish restore /lib directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/lib64_permissions.acl && echo "Finish restore /lib64 directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/lost+found_permissions.acl && echo "Finish restore /lost+found directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/media_permissions.acl && echo "Finish restore /media directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/mnt_permissions.acl && echo "Finish restore /mnt directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/opt_permissions.acl && echo "Finish restore /opt directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/proc_permissions.acl && echo "Finish restore /root directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/root_permissions.acl && echo "Finish restore /bin directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/run_permissions.acl && echo "Finish restore /run directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/sbin_permissions.acl && echo "Finish restore /sbin directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/srv_permissions.acl && echo "Finish restore /srv directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/sys_permissions.acl && echo "Finish restore /sys directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/tmp_permissions.acl && echo "Finish restore /tmp directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/usr_permissions.acl && echo "Finish restore /usr directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
setfacl --restore $BASE_DIR/backups/var_permissions.acl && echo "Finish restore /var directory in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log
echo "Finish restore process in $EXACT_TIME" >> $BASE_DIR/backups/logs/backup_permissions_process_$DATE.log