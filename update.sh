#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="${SCRIPT_DIR}"
DEST_DIR="/opt/1panel/apps/openresty/openresty/www/sites/qwcli.minapp.xin/index"

mkdir -p "${DEST_DIR}"
rsync -a --exclude='.git/' "${SRC_DIR}/" "${DEST_DIR}/"

echo "Copied files from ${SRC_DIR} to ${DEST_DIR}"
