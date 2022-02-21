#!/bin/sh
if [ ! -z "`git diff`" ]; then 
    echo Please commit first
    exit
fi

rm -r binutils
git reset --hard

