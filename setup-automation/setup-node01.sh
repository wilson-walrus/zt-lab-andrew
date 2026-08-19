#!/bin/bash

echo "[setup-automation] node01" >> /tmp/progress.log

REQUIRED_FILE="/etc/rhsm/ca/katello-server-ca.pem"
if [ ! -f "$REQUIRED_FILE" ]; then
    echo "setup-node01: required file '$REQUIRED_FILE' not found (satellite registration did not complete)" >&2
    exit 78  # EX_CONFIG (sysexits.h): configuration error
fi
