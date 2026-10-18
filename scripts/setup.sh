#!/usr/bin/env bash
set -euo pipefail

echo "=== Nexvion DevOps Environment Setup ==="

for cmd in git docker; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
        echo "ERROR: $cmd is not installed."
        exit 1
    fi
    echo "OK: $cmd is installed"
done

docker compose version

mkdir -p backups

echo "Setup checks completed successfully."
