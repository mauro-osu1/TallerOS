while LINEA=. read -r nombre ext
	do
		cd /home/ubuntu/file_salida2
		touch "$nombre$ext-mv.txt"
	done < /home/ubuntu/salida.out
echo "Creacion ¡OK!"
