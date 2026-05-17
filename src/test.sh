#!/bin/bash

EXPECTED_OUTPUT="Hello, Test!"

OUTPUT=$(node -e "console.log(require('./src/main.js')('Test'))")

if [ "$OUTPUT" == "$EXPECTED_OUTPUT" ]; then
  echo "Test passed"
  exit 0
else
  echo "Test failed: Expected '$EXPECTED_OUTPUT', but got '$OUTPUT'"
  exit 1
fi