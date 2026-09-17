#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <carpeta>"
    exit 1
fi

grep -Ril "home" "$1"
