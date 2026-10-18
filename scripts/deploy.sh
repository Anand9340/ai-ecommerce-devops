#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

cd "$PROJECT_DIR"

echo "=== Deploying Nexvion E-Commerce ==="

sudo docker compose up -d --build

echo "Waiting for the application to start..."
sleep 3

"$PROJECT_DIR/scripts/health-check.sh"

echo "Deployment completed successfully."
