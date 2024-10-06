#!/bin/bash

# Definir el archivo de salida
output_file="RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt"

# Obtener la IP públic
IP_PUBLICA=$(curl -s ifconfig.me)

# Obtener el hash de la contraseña del usuario 'osboxes
HASH=$(sudo grep 'osboxes' /etc/shadow | awk -F: '{print $2}')

# Obtener el usuario actual
USER=$(whoami)

# Cambiar al directorio del repositorio
cd /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Alan_Calveyra

# Obtener la URL del repositorio remoto
REPO_URL=$(git remote get-url origin)

# Escribir la información en el archiv
echo "Mi IP Publica es: $IP_PUBLICA" > $output_file
echo "Mi usuario es: $USER" >> $output_file
echo "El Hash de mi Usuario es: $HASH" >> $output_file
echo "La URL de mi repositorio es: $REPO_URL" >> $output_file

echo "Archivo Filtro_Avanzado generado."
