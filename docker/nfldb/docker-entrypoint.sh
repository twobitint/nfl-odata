#!/bin/bash

curl -o nfldb.sql.zip http://burntsushi.net/stuff/nfldb/nfldb.sql.zip \
    && unzip nfldb.sql.zip \
    && PGPASSWORD=nfldb psql -h db -U nfldb < nfldb.sql \
    && nfldb-update
