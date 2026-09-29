#!/usr/bin/env bash
# sanity.sh — gate for go-template projects: gofmt cleanliness + go vet.
# Usage: scripts/sanity.sh   (run from the project root)
set -euo pipefail

unformatted="$(gofmt -l src examples tests 2>/dev/null || true)"
if [ -n "$unformatted" ]; then
  echo "FAIL: unformatted Go files:" >&2
  echo "$unformatted" >&2
  exit 1
fi

if [ -f go.mod ]; then
  go vet ./...
else
  echo "note: no go.mod — skipping go vet ./... (run: go mod init <module-path>)"
fi

echo "sanity OK"
