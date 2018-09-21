#!/bin/sh

message_file=$1
commit_msg=$(head -1 "${1:?Missing commit message file}")

# enforce start with capital letter
if [[ $commit_msg =~ ^[A-Z]+.*$ ]]; then
  echo "[POLICY] Capital letter test passed"
else
  echo "[POLICY] Error: Please start your commit message with a capital letter"
  exit 1
fi

# enforce maxium length
MAX_LEN=75
if [[ ${#commit_msg} -lt $MAX_LEN ]]; then
  echo "[POLICY] Maximum message length test passed"
else
  echo "[POLICY] Error: Your commit message is too long (${#commit_msg} > $MAX_LEN)"
  exit 1
fi
