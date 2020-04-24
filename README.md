# git-clang-format lint action

This action checks if the style of the source code matches the .clang-format file.

## Example usage

```yml
name: test-clang-format

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - uses: yshui/clang-format-lint-action@master
```
