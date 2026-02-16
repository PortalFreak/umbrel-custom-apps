#!/bin/bash
set -e

CONF_DIR="${APP_DATA_DIR}/onedrive_conf"

# If the refresh token exists after the container has started, mark the status as OK
if [ -f "${CONF_DIR}/refresh_token" ]; then
    echo "OK" > "${CONF_DIR}/status"
fi
