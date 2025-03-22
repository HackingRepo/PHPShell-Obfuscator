#!/bin/bash

# Prompt the user for input
echo "Enter an IP or PORT to encode: "
read inp

# Base64 encode the input
encoded=$(echo -n "$inp" | base64)

# Print the Base64 encoded result
echo "Base64 Encoded Output: $encoded"

