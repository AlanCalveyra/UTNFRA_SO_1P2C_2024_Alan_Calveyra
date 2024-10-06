#!/bin/bash
sudo su
fdisk -l #esto nos lista los discos
fdisk /dev/sdb
n
p
1

+1G
#se creo la 1ra particion
n
p
2

+1G
#se creo la 2da partición
n
p
3

+1G
#se creo la 3ra partición
n
e


#se dejaron dos espacio. que serian por default (asi llega a 7G)
n
1

+1G
n
1

+1G
n
1

+1G
n
1

+1G
n
1

+1G
n
1

+1G
n
1


w

#se dejo dos espacios por default y la ultima partición queda en 1016M

#Formatear las particiones:
sudo mkfs -t ext4 /dev/sdb1
sudo mkfs -t ext4 /dev/sdb2
sudo mkfs -t ext4 /dev/sdb3
sudo mkfs -t ext4 /dev/sdb5
sudo mkfs -t ext4 /dev/sdb6
sudo mkfs -t ext4 /dev/sdb7
sudo mkfs -t ext4 /dev/sdb8
sudo mkfs -t ext4 /dev/sdb9
sudo mkfs -t ext4 /dev/sdb10
sudo mkfs -t ext4 /dev/sdb11

#comando para formatear
#-t para decir el tipo de formato

#montar de manera persistente, crear las carpetas fuera del directorio
sudo mount /dev/sdb1 /Examenes-UTN/alumno1/parcial1
sudo mount /dev/sdb2 /Examenes-UTN/alumno1/parcial2
sudo mount /dev/sdb3 /Examenes-UTN/alumno1/parcial3
sudo mount /dev/sdb5 /Examenes-UTN/alumno2/parcial1
sudo mount /dev/sdb6 /Examenes-UTN/alumno2/parcial2
sudo mount /dev/sdb7 /Examenes-UTN/alumno2/parcial3
sudo mount /dev/sdb8 /Examenes-UTN/alumno3/parcial1
sudo mount /dev/sdb9 /Examenes-UTN/alumno3/parcial2
sudo mount /dev/sdb10 /Examenes-UTN/alumno3/parcial3
sudo mount /dev/sdb11 /Examenes-UTN/profesores

#Este comando añade una nueva línea al archivo /etc/fstab que describe cómo montar la partición /deb1/ en el directorio /Examenes-UTN/alumno1/parcial1 con el sistema de archivos ext4
echo "/dev/sdb1 /Examenes-UTN/alumno1/parcial1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb2 /Examenes-UTN/alumno1/parcial2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb3 /Examenes-UTN/alumno1/parcial3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb5 /Examenes-UTN/alumno2/parcial1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb6 /Examenes-UTN/alumno2/parcial2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb7 /Examenes-UTN/alumno2/parcial3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb8 /Examenes-UTN/alumno3/parcial1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb9 /Examenes-UTN/alumno3/parcial2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb10 /Examenes-UTN/alumno3/parcial3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb11 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

#comando para montar a todos
sudo mount -a



