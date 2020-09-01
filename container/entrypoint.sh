#!/bin/sh

cd /src

# run make process with the new pygments
cp -a $GITHUB_WORKSPACE ./pygments
make || exit 1

# copy artifacts back
mkdir -p $GITHUB_WORKSPACE/pyodide
cp build/Pygments.* build/pyodide.* build/packages.json $GITHUB_WORKSPACE/pyodide
