#!/bin/bash

set -u # or set -o nounset
: "$DATABASE_URL"

cd "$(dirname "$0")/.."

# Replace DATABASE_URL in docker-compose.yaml and execute it
envsubst < ./docker-compose.yml | docker compose -f - up --build
