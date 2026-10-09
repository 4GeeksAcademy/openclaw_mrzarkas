#!/usr/bin/env bash

if [[ -n "${FOURGEEKS_TOKEN:-}" ]]; then
    echo "FOURGEEKS_TOKEN_AVAILABLE"
else
    echo "FOURGEEKS_TOKEN_MISSING"
fi
EOF
