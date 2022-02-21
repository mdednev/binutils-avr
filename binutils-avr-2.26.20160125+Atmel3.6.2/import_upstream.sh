#!/bin/bash

if [ $# -ne 2 ]; then 
    echo Usage: $0 '<archive>' '<version>'
    echo Exmpl: $0 avr-binutils.tar.bz2 4.9.2+Atmel3.5.0
    exit -1
fi

if [ ! -z "`git diff`" ]; then 
    echo Please commit first
    exit
fi


set -x
set -e

git checkout upstream
rm -Rf binutils
tar xf $1
git add binutils
git commit -m "Import upstream version $2"
git tag upstream/$2
git push
git push --tags

git checkout dfsg_clean
git merge --no-commit -X theirs upstream
./make_dfsg.sh
git add binutils
git commit -m "Make upstream version $2 dfsg-clean"
git tag "dfsg_clean/$2"
git push
git push --tags

git checkout master
git merge dfsg_clean -m "Merge dfsg-clean version of upstream $2"

dch -v $2-1 New upstream release
dch -r ok
git add debian/changelog
git commit -m 'Release message in changelog'

git tag "debian/$2-1"
git push
git push --tags

gbp buildpackage --git-pbuilder --git-upstream-tree=branch --git-upstream-branch=dfsg_clean
