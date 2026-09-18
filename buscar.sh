#!/bin/bash

if [ "$#" -gt 2 ]; then
    echo "ERROR. Solo se permiten máximo 2 argumentos."
    exit 1

elif [ -z "$1" ]; then
    echo "ERROR. Debe ingresar al menos la palabra a buscar."
    exit 1
fi
PALABRA="$1"

