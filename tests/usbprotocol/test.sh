#!/usr/bin/env bash
set -e

# Loops over all HW_TYPEs, see board/boards/board_declarations.h
for _ in {0..50}; do
  for hw_type in {0..7}; do
    echo "Testing HW_TYPE: $hw_type"
    HW_TYPE=$hw_type pytest .
  done
done
