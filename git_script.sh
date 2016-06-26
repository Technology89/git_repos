#!/bin/bash
date=$(date +"%d-%m-%y - %T")

git add . -A
git commit -am "$date"
git push origin master
