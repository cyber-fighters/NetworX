#!/bin/sh

# Fail if trying to commit executed jupyter notebook
 diff=$(git diff --cached)
 if [[ $diff =~ ^.*"execution_count":\ [0-9]+,.*$ ]]; then
   echo "[POLICY] Error: Please clear the output of the jupyter notebook before committing"
   exit 1
 else
   echo "[CONTENT] Jupyter notebook test passed"
 fi
