#! /usr/bin/env bash

CDT=$(date '+%Y-%m-%d %H:%M:%S')
BRANCH="simbroker-qpid"

git add .
git commit -m "Commited at $CDT"
git push $BRANCH $BRANCH
