#!/bin/bash
#Primero crea el grupo
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
#siempre con sudo

#para ver si está creado el grupo: 
tail /etc/group

#Creación del usuario:
sudo useradd -m -s /bin/bash -c "p1c2_2024_A1" -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "p1c2_2024_A2" -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "p1c2_2024_A3" -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "p1c2_2024_A4" -G p1c2_2024_gAlumno p1c2_2024_A4
ls /home/: Muestra los usuarios creados

#COMANDO PARA CAMBIAR LOS PERMISOS DEL DUEÑO, GRUPO Y USUARIO: 
sudo chown p1c2_2024_A1:p1c2_2024_gAlumno /Examenes-UTN/alumno1
sudo chmod 750 /Examenes-UTN/alumno1
#VALIDAR QUE LOS PERMISOS SEAN CORRECTOS: 
ls -ld /Examenes-UTN/alumno1

#2do permiso: 
sudo chown p1c2_2024_A2:p1c2_2024_gAlumno /Examenes-UTN/alumno2
sudo chmod 760 /Examenes-UTN/alumno2
#2da validación:
ls -ld /Examenes-UTN/alumno2

#3er permiso:
sudo chown p1c2_2024_A3:p1c2_2024_gAlumno /Examenes-UTN/alumno3
sudo chmod 700 /Examenes-UTN/alumno3
#3er validación:
ls -ld /Examenes-UTN/alumno3 (editado)

#4to permiso:
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod 775 /Examenes-UTN/profesores
#4ta validación:
ls -ld /Examenes-UTN/profesores

#crear archivos validar.txt con whoami en cada carpeta
echo "validando con whoami para cada usuario..."

sudo -u p1c2_2024_A1 whoami | sudo tee /Examenes-UTN/alumno1/validar.txt > /dev/null
sudo -u p1c2_2024_A2 whoami | sudo tee /Examenes-UTN/alumno2/validar.txt > /dev/null
sudo -u p1c2_2024_A3 whoami | sudo tee /Examenes-UTN/alumno3/validar.txt > /dev/null
sudo -u p1c2_2024_P1 whoami | sudo tee /Examenes-UTN/profesores/validar.txt > /dev/null
