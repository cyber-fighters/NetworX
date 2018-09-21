#!/bin/sh

# Fail if trying to commit executed jupyter notebook
 diff=$(git diff --cached | grep -e '^[\+]\s.*' | grep -e '\"execution_count\": [0-9][0-9]*')

 if [[ -z $diff ]]; then
   echo "[CONTENT] Jupyter notebook test passed"
 else
   echo "[POLICY] Error: Please clear the output of the jupyter notebook before committing"
   exit 1
 fi
