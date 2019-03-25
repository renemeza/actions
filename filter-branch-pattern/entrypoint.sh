#!/bin/sh

set -e

BRANCH=$(echo "$GITHUB_REF" | sed s,^refs/heads/,,)
PATTERN="${1:-*}"

if [ -z "$GITHUB_REF" ]; then
  echo "\$GITHUB_REF is not set"
  exit 1
fi

if echo "$BRANCH" | grep -qE "^($PATTERN)$"; then
  echo "'$BRANCH' matches '$PATTERN'"
  exit 0
else
  echo "'$BRANCH' does not match '$PATTERN'"
  exit 78
fi

