#!/usr/bin/env bash
set -euo pipefail

echo "Removing dangling Docker images..."
sudo docker image prune -f

echo "Cleanup completed."
