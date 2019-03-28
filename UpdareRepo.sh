#!/bin/bash

rm Packages*
dpkg-scanpackages -m . /dev/null >Packages
bzip2 Packages
git add --all
git commit -m "Updated"
git push origin master
