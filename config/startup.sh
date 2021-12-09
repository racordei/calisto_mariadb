echo
echo "================================================="
echo "** Creating default DB and users"

mysql -u root -p$MARIADB_ROOT_PASSWORD --execute \
"CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE_NAME;
GRANT ALL PRIVILEGES ON $MARIADB_DATABASE_NAME.* TO '$MARIADB_USER'@'%';"

echo "** Finished creating default DB and users"
echo "================================================="