#!/usr/bin/env bash
# Craft Scripts Environment
#
# Local environmental config for nystudio107 Craft scripts
#
# @author    nystudio107
# @copyright Copyright (c) 2017 nystudio107
# @link      https://nystudio107.com/
# @package   craft-scripts
# @since     1.2.0
# @license   MIT
#
# This file should be renamed to '.env.sh' and it should reside in the
# `scripts` directory.  Add '.env.sh' to your .gitignore.

# -- GLOBAL settings --

# What to prefix the database table names with
GLOBAL_DB_TABLE_PREFIX="craft_"

# The path of the `craft` folder, relative to the root path; paths should always have a trailing /
GLOBAL_CRAFT_PATH="/Users/alansparkes/sites/rluffcraft/"

# The maximum age of db backups in days; backups older than this will be automatically removed
GLOBAL_DB_BACKUPS_MAX_AGE=90

# The database driver for this Craft install ('mysql' or 'pgsql')
GLOBAL_DB_DRIVER="mysql"

# -- LOCAL settings --

# Local path constants; paths should always have a trailing /
LOCAL_ROOT_PATH="/Users/alansparkes/sites/rluffcraft/"
LOCAL_ASSETS_PATH=${LOCAL_ROOT_PATH}"public_html/assets/"

# Local user & group that should own the Craft CMS install
LOCAL_CHOWN_USER="alansparkes"
LOCAL_CHOWN_GROUP="staff"

# Local directories relative to LOCAL_ROOT_PATH that should be writeable by the $CHOWN_GROUP
LOCAL_WRITEABLE_DIRS=(
                "${GLOBAL_CRAFT_PATH}storage"
                "public_html/cpresources"
                "public_html/assets/"
                )

# Local asset directories relative to LOCAL_ASSETS_PATH that should be synched with remote assets
LOCAL_ASSETS_DIRS=(
                ""
                )

# Craft-specific file directories relative to LOCAL_CRAFT_FILES_PATH that should be synched with remote files
LOCAL_CRAFT_FILE_DIRS=(
                "rebrand"
                "userphotos"
                )

# Absolute paths to directories to back up, in addition to `LOCAL_ASSETS_DIRS` and `LOCAL_CRAFT_FILE_DIRS`
LOCAL_DIRS_TO_BACKUP=(
                )

# Local FastCGI Cache path; leave it empty ("") if you're not using FastCGI Cache; paths should always have a trailing /
# The `clear_caches.sh` script will delete everything in this directory when it is executed (say, on deploy)
LOCAL_FASTCGI_CACHE_DIR=""

# Local Redis database ID; leave it empty ("") if you're not using Redis. The `clear_caches.sh` script will purge
# this Redis database when it is executed (say, on deploy)
LOCAL_REDIS_DB_ID=""

# Local database constants; default port for mysql is 3306, default port for postgres is 5432
LOCAL_DB_NAME="rluffcraft"
LOCAL_DB_PASSWORD="zara1966"
LOCAL_DB_USER="root"
LOCAL_DB_HOST="127.0.0.1"
LOCAL_DB_PORT="3306"
LOCAL_DB_SCHEMA="public"

# If you are using mysql 5.6.10 or later and you have `login-path` setup as per:
# https://opensourcedbms.com/dbms/passwordless-authentication-using-mysql_config_editor-with-mysql-5-6/
# you can use it instead of the above LOCAL_DB_* constants; otherwise leave this blank
LOCAL_DB_LOGIN_PATH=""

# The `mysql` and `mysqldump` commands to run locally
LOCAL_MYSQL_CMD="mysql"
LOCAL_MYSQLDUMP_CMD="mysqldump"

# The `psql` and `pg_dump` commands to run locally
LOCAL_PSQL_CMD="psql"
LOCAL_PG_DUMP_CMD="pg_dump"

# Local backups path; paths should always have a trailing /
LOCAL_BACKUPS_PATH="/Users/alansparkes/sites/rluffcraft/backups/"

# -- REMOTE Staging settings --

# Remote ssh credentials, user@domain.com and Remote SSH Port
 REMOTE_SSH_LOGIN="rebeccaluff@185.219.239.3"
 REMOTE_SSH_PORT="2223"
# Should we connect to the remote database server via ssh?
REMOTE_DB_USING_SSH="yes"
# Remote path constants; paths should always have a trailing /

REMOTE_ROOT_PATH="/home/rebeccaluff/craft/"
REMOTE_ASSETS_PATH=${REMOTE_ROOT_PATH}"public_html/assets/"

# Remote database constants; default port for mysql is 3306, default port for postgres is 5432
 REMOTE_DB_NAME="rebeccaluff_craft"
 REMOTE_DB_PASSWORD="R.+X=HCElb81"
 REMOTE_DB_USER="rebeccaluff_dbu"
 REMOTE_DB_HOST="185.219.239.3"
 REMOTE_DB_PORT="3306"
 REMOTE_DB_SCHEMA="public"
# --- end staging -- #


# If you are using mysql 5.6.10 or later and you have `login-path` setup as per:
# https://opensourcedbms.com/dbms/passwordless-authentication-using-mysql_config_editor-with-mysql-5-6/
# you can use it instead of the above REMOTE_DB_* constants; otherwise leave this blank
REMOTE_DB_LOGIN_PATH=""

# The `mysql` and `mysqldump` commands to run remotely
REMOTE_MYSQL_CMD="mysql"
REMOTE_MYSQLDUMP_CMD="mysqldump"

# The `psql` and `pg_dump` commands to run remotely
REMOTE_PSQL_CMD="psql"
REMOTE_PG_DUMP_CMD="pg_dump"

# Remote backups path; paths should always have a trailing /
REMOTE_BACKUPS_PATH="/home/rebeccaluff/craft/backups/"

# Remote Amazon S3 bucket name
REMOTE_S3_BUCKET=""

# Optional subfolder relative to the S3 bucket root; paths should always have a trailing /
REMOTE_S3_PATH=""
