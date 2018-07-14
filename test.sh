#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Usage: $(basename $0) /script/path" && exit 1

script="${1}"

if cmp -s <("${script}") ./test_output; then
    echo "OK"
else
    echo "FAILED"
    exit 1
fi
