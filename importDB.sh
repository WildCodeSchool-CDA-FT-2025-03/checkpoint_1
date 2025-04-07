#!/bin/bash

# Charger les variables du fichier .env
export $(grep -v '^#' .env | xargs)

# Importer la base
mysql -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DB" < cda_checkpoint_one_backup.sql
