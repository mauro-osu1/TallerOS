while LINEA= read -r line
	do
		cd /home/ubuntu/file_salida
		touch "$line.txt"
	done < /home/ubuntu/Entrada.in
echo "Solicitud Realizada"
