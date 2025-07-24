#!/bin/bash

EXPECTED="Hello, World!"
OUTPUT=$(node -e "console.log(require('./src/app')('World'))")
if [ "$EXPECTED" = "$OUTPUT" ]; then
    echo "app.js ran successfully."
    exit 0
else
    echo "app.js failed to run."
    exit 1
fi