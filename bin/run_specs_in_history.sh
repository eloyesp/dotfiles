#!/bin/bash

set -e # makes stop on failure

function revisions {
  git rev-list --reverse HEAD
}

function commit_description {
  git --no-pager log --color --oneline -1 $rev
}

function number_of_lines {
  git ls-tree -r $rev |
  awk '{print $3}' |
  xargs git show |
  wc -l
}

function main {
  git rev-list --reverse HEAD |
  for rev in `revisions`; do
    echo "`number_of_lines` `commit_description`"
  done
}

main
