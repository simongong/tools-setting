#!/bin/sh
###
# Set a daily cron task to backup mysql
# Only keep the backup files for the last 7 days
# 0 2 * * * sh /path/to/mysql_backup.sh
###

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
DUMP=/usr/local/mysql/bin/mysqldump
OUT_DIR=/home/{user}/backup/database
LINUX_USER={user}
DB_NAME_1={db_name_1}
DB_NAME_2={db_name_2}
DB_USER={db_user}
DB_PASS={db_pwd}
DAYS=7
cd $OUT_DIR
DATE=`date +%Y_%m_%d`
OUT_SQL_1="$DB_NAME_1.$DATE.sql"
OUT_SQL_2="$DB_NAME_2.$DATE.sql"
TAR_SQL="mysqldata_bak_$DATE.tar.gz"
echo "Dumping database..."
$DUMP -u$DB_USER -p$DB_PASS $DB_NAME_1 --default-character-set=utf8 --opt -Q -R --skip-lock-tables> $OUT_SQL_1
$DUMP -u$DB_USER -p$DB_PASS $DB_NAME_2 --default-character-set=utf8 --opt -Q -R --skip-lock-tables> $OUT_SQL_2
echo "Packing files..."
tar -czf $TAR_SQL ./$OUT_SQL_2 ./$OUT_SQL_1
echo "Cleaning up temporary backups..."
rm $OUT_SQL_1
rm $OUT_SQL_2
chown $LINUX_USER:$LINUX_USER $OUT_DIR/$TAR_SQL
echo "Cleaning up backups if it is built 7 days ago..."
find $OUT_DIR -name "mysqldata_bak*" -type f -mtime +$DAYS -exec rm {} \;