#!/bin/bash

sudo -u postgres psql -f create_db.sql
sudo -u postgres psql -d hep -f dielectrons.sql

sudo -u postgres psql -d hep -c "\COPY dielectrons TO '/tmp/mee.csv' CSV HEADER;"
cp /tmp/mee.csv .
