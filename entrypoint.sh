#!/bin/sh -l

cd "$GITHUB_WORKSPACE"

diff=`git-clang-format --diff`

echo $diff | colordiff
[ "$diff" = "no modified files to format" ] || exit 1
