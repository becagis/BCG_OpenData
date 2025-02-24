#!/bin/bash

set -e

host="$1"
port="$2"
shift

until PGPASSWORD=${POSTGRES_PASSWORD} psql -h "$host" -p "$port" -U ${POSTGRES_USER} -P "pager=off" -c '\l'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

until PGPASSWORD=${POSTGRES_PASSWORD} psql -h "$host" -p "$port" -U ${POSTGRES_USER} -d ${GEONODE_DATABASE} -P "pager=off" -c '\l'; do
  >&2 echo "${GEONODE_DATABASE} is unavailable - sleeping"
  sleep 1
done

until PGPASSWORD=${POSTGRES_PASSWORD} psql -h "$host" -p "$port" -U ${POSTGRES_USER} -d ${GEONODE_GEODATABASE} -P "pager=off" -c '\l'; do
  >&2 echo "${GEONODE_GEODATABASE} is unavailable - sleeping"
  sleep 1
done

>&2 echo "GeoNode databases are up - executing command"
