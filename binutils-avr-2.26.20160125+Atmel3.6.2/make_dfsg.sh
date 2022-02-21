#!/bin/bash


for f in `find binutils -type f -name \*.1 -or -name \*.texi.in -or -name \*.texi -or -name \*.html -or -name \*.7 -or -name \*.info -or -name \*.texinfo`; do
    echo > $f
done

rm `find binutils -type f -name \*.chm` || true

