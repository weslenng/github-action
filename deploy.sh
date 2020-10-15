#!/bin/sh

yarn build
git add -A
git commit -m "$1"
git tag -a -f -m "$2" v1
git push origin HEAD
git push --tags --force
