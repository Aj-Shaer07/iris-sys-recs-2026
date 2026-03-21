#!/bin/bash

set -e

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

echo "Starting backup at $TIMESTAMP"

mysqldump \
    -h mysql-db \
    -u root \
    -p${MYSQL_ROOT_PASSWORD} \
    --all-databases \
    > /backup_data/backup_$TIMESTAMP.sql

tar -czf /backup_data/backup_$TIMESTAMP.tar.gz /backup

cd /backup_data

ls -t | tail -n +6 | xargs -r rm --

echo "Backup completed: /backup_data/backup_$TIMESTAMP.sql"

sleep 60
exec /backup.sh
