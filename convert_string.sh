#!/bin/bash

echo "Enter base64 or hex for conversion"
read userInput

if [ "${userInput:0:2}" = "0x" ]; then
    echo -n "$userInput" | xxd -p -r | base64
else 
    echo -n "$userInput" | base64 -d | xxd -p
fi
