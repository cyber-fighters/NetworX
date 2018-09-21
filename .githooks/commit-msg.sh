#!/bin/sh

message_file=$1
commit_msg=$(cat "${1:?Missing commit message file}")

if [[ $commit_msg =~ ^[A-Z0-9]+.*$ ]]; then
  echo "[POLICY] Capital letter test passed"
  exit 0
else
  echo "[POLICY] Please start your commit message with a capital letter"
  exit 1
fi
