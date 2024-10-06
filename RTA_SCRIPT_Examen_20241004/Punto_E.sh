#!/bin/bash

# Definir el archivo de salida con la ruta completa
output_file="/home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Valverde/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt"

# Obtener el total de memoria RAM
total_memoria=$(grep MemTotal /proc/meminfo | awk '{print $2 " " $3}')

# Obtener el fabricante del chasis
fabricante_chasis=$(sudo dmidecode -t chassis | grep "Manufacturer" | awk -F ': ' '{print $2}')

# Escribir los resultados en el archivo Filtro_Basico.txt
echo "Total de Memoria RAM: $total_memoria" > "$output_file"
echo "Fabricante del Chasis: $fabricante_chasis" >> "$output_file"
