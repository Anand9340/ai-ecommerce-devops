#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "=== Deploying Nexvion E-Commerce ==="

sudo docker compose \
  -f "$PROJECT_DIR/docker/docker-compose.yml" \
  up -d --build

echo "Waiting for the application to start..."
sleep 3

"$PROJECT_DIR/scripts/health-check.sh"

echo "Deployment completed successfully."
