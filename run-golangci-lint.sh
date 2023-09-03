#!/usr/bin/env bash

set -eu -o pipefail

if ! command -v golangci-lint &> /dev/null ; then
    echo "golangci-lint not installed or available in the PATH" >&2
    echo "please check https://github.com/golangci/golangci-lint" >&2
    exit 1
fi
echo "printign check "
echo "$@"
echo "printign check ended"
exec golangci-lint run --disable-all -E errcheck -E deadcode -E errcheck -E govet -E gosimple -E ineffassign  -E staticcheck -E structcheck -E unused -E varcheck -E bodyclose -E funlen  -E gocritic -E gosec -E maligned -E misspell -E prealloc  -E scopelint -E nakedret -E unconvert
