#!/bin/bash
set -e

CONF_DIR="${APP_DATA_DIR}/onedrive_conf"

mkdir -p "${CONF_DIR}"

# Check if a refresh token exists
if [ -f "${CONF_DIR}/refresh_token" ]; then
    echo "OK" > "${CONF_DIR}/status"
else
    echo "NO_TOKEN" > "${CONF_DIR}/status"
fi
