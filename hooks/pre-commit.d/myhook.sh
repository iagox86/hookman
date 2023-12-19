#!/bin/bash

set -euo pipefail

# Print errors in red
err() {
  echo -ne '\e[31m\e[1m' # Red + Bold
  echo -e "$@"
  echo -ne '\e[0m'
  exit 0
}

# Get the root directory
BASE=$(git rev-parse --show-toplevel)
echo "Repo: $BASE"

CHANGED=$(git diff --name-only main)
echo "Files changed since forking form main: $CHANGED"

echo
echo "This is a demo hook!"
