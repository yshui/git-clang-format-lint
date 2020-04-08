#!/bin/sh -l

cd "$GITHUB_WORKSPACE"

diff=`git-clang-format --diff --commit $INPUT_BASE`

echo $diff | colordiff
[ "$diff" = "no modified files to format" ] || exit 1
