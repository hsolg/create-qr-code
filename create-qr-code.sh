#!/bin/sh

if [ "$#" -eq 1 ]; then
    docker run --rm create-qr-code "$1"
elif [ "$#" -eq 2 ]; then
    docker run --rm -v $(pwd)/output:/app/output create-qr-code -o "output/$1" "$2"
else
    echo "Usage: create-qr-code.sh [ <filename> ] <code-content>"
    exit 1
fi
