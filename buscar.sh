#!/bin/bash

# 1. Validar que se reciba un argumento (que no esté vacío)
if [ -z "$1" ]; then
    echo "Error: Debe proporcionar la ruta de una carpeta como argumento."
    exit 1
fi

# 2. Validar que el argumento sea una carpeta existente
if [ ! -d "$1" ]; then
    echo "Error: '$1' no es una carpeta o no existe."
    exit 1
fi

# 3. Lógica principal (si pasa las validaciones, hace la búsqueda)
echo "Buscando archivos en la carpeta: $1..."
grep -rl "home" "$1"

