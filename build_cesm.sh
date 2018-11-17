#!/bin/sh

set -e
set -u

sandboxdir="sandbox"

cesmbranch="release-cesm2.0.1"
cesmurl="https://github.com/ESCOMP/cesm.git"

# get CESM
if [ ! -d "$sandboxdir" ]; then
	git clone -b "$cesmbranch" "$cesmurl" "$sandboxdir"
	cd "$sandboxdir"
	./manage_externals/checkout_externals
fi
