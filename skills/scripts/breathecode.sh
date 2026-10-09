#!/usr/bin/env bash
set -euo pipefail

BASE_URL="https://breathecode.herokuapp.com"

if [[ -z "${FOURGEEKS_TOKEN:-}" ]]; then
    echo "ERROR: FOURGEEKS_TOKEN is not available" >&2
    exit 1
fi

endpoint="${1:?Endpoint required}"

curl --fail-with-body --silent --show-error \
    -H "Authorization: Token ${FOURGEEKS_TOKEN}" \
    "${BASE_URL}${endpoint}"
