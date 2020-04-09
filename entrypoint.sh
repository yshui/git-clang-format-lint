#!/bin/sh -l

set -x

cd "$GITHUB_WORKSPACE"

diff=`git-clang-format --diff --commit $INPUT_BASE`

echo $diff | colordiff --color=always
[ "$diff" = "no modified files to format" ] || exit 1
