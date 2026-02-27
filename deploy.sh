#!/usr/bin/env bash
set -euo pipefail
cd /srv/apps/deploy-smoketest
docker compose -f docker-compose.prod.yml build --no-cache
docker compose -f docker-compose.prod.yml up -d --remove-orphans
