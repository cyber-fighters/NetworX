#!/bin/sh

message_file=$1
commit_msg=$(cat "${1:?Missing commit message file}")

# enforce start with capital letter
if [[ $commit_msg =~ ^[A-Z]+.*$ ]]; then
  echo "[POLICY] Capital letter test passed"
else
  echo "[POLICY] Please start your commit message with a capital letter"
  exit 1
fi

# enforce maxium length
MAX_LEN=50
if [[ ${#commit_msg} -gt $MAX_LEN ]]; then
  echo "[POLICY] Maximum message length test passed"
else
  echo "[POLICY] Please shorten your commit message to a maximum of $MAX_LEN characters"
  exit 1
fi
