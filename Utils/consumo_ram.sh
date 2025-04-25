#!/bin/bash

echo "🚀 Reservando memoria en Bash..."

MEM_MB=6000  # Cambia este valor según lo que quieras consumir
for ((i=0; i<MEM_MB; i++)); do
  arr[i]=$(head -c 1048576 </dev/zero | tr '\0' 'x')
done

echo "✅ Se han reservado $MEM_MB MB de memoria RAM."
read -p "Presiona Enter para liberar la memoria..."

unset arr
echo "🧹 Memoria liberada."
