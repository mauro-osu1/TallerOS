while LINEA=. read -r nombre ext
	do
		cd /home/ubuntu/file_salida
		touch "$nombre$ext"
	done < /home/ubuntu/Entrada.in
echo "Creacion !ok¡"
cd /home/ubuntu/file_salida
rm *.sh
echo "Se elimino el archivo con extencion .sh de manera exitosa"
