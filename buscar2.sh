#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Debes especificar la palabra a buscar."
    echo "Uso: $0 <palabra> [trayectoria]"
    exit 1
fi

if [ -n "$3" ]; then
    echo "Error: Solo se permiten dos argumentos como máximo."
    echo "Uso: $0 <palabra> [trayectoria]"
    exit 1
fi

PALABRA="$1"
TRAYECTORIA="${2:-/}"

if [ -n "$2" ] && [ ! -e "$2" ]; then
    echo "Error: La trayectoria '$2' no existe en el sistema."
    exit 1
fi

echo "Buscando la palabra '$PALABRA' en: $TRAYECTORIA"

RESULTADO=$(grep -rnwl "$PALABRA" "$TRAYECTORIA" 2>/dev/null)

if [ -z "$RESULTADO" ]; then
    echo "No se encontró la palabra '$PALABRA'."
else
    echo "$RESULTADO"
fi
