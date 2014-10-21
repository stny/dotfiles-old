#!/usr/bin/env bash

for repo in $(ghq list --full-path)
do
  git -C $repo pull
done
