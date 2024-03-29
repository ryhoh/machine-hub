#!/bin/sh

rm -rf ./psql
pg_ctl initdb -D ./psql
pg_ctl start -D ./psql
psql -d postgres -f db_definitions.sql
psql -d status_board -U web -f table_definitions.sql
pg_ctl stop -D ./psql
