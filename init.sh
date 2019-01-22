#!/bin/bash
set -e

PGPASSWORD="$POSTGRES_PASSWORD" psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "template1" -c "CREATE EXTENSION pgcrypto;"
PGPASSWORD="$POSTGRES_PASSWORD" psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "postgres" -c "CREATE EXTENSION pgcrypto;"
