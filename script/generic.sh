#!/usr/bin/env bash

set -e

# find generic installers and run them interactively
find . -name all.sh | while read installer ; do bash -c "${installer}" > /dev/null ; done
