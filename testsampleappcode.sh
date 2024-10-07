#!/bin/bash

# variables
APP_URL="http://172.17.0.3:5050/"
EXPECTED_OUTPUT="You are calling me from 172.17.0.2"

# running curl command and capturing output
RESPONSE=$(curl -s $APP_URL)

# Check if the response contains the expected output
if echo "$RESPONSE" | grep -q "$EXPECTED_OUTPUT"; then
  echo "SUCCESS"
  exit 0
else
  echo "FAILED"
  echo "output was:"
  echo "$RESPONSE"
  exit 1  # failure
fi
