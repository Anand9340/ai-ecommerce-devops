#!/usr/bin/env bash
set -euo pipefail

URL="${1:-http://localhost:8080/}"

echo "Checking application: $URL"

if curl --fail --silent --show-error \
    --max-time 10 "$URL" -o /dev/null; then
    echo "HEALTH CHECK PASSED"
else
    echo "HEALTH CHECK FAILED"
    exit 1
fi
