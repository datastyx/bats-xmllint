# bats-xmllint
Alpine based Image with libxml2 utilities and BATS for tests.

## Example usage 

First set setup your working directory to contain your BATS file and related xml/wxs etc files, then :
```
docker run --rm -it -v `pwd`:/src datastyx/bats-xmllint schema_tests.bats
```
