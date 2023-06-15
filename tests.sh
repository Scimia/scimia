#!/usr/bin/env bash

# strict mode
set -euo pipefail
IFS=$'\n\t'

if [[ -n "${VERBOSE:-}" ]]; then
  set -x
fi

sleep 3

if [[ "${1:-}" == 'flaky' ]]; then
  rc="$(shuf -i 0-1 -n1)"
  exit "${rc}"
fi

