#!/bin/bash

# Charger les variables .env avec dotenv-cli
if [ -z "$MYSQL_USER" ]; then
  echo "Erreur : variables non chargées."
  exit 1
fi

# Exécuter la commande
mysqldump -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DB" > cda_checkpoint_one_backup.sql
