while :
do
	echo "		******************************************"		
	echo "		*         Configuracion Servidor         *"
	echo -e "		******************************************\n"
	echo "		1.Cambiar nombre de servidor"
	echo "		2.Cambiar particion discos"
	echo "		3.Cambiar IP servidor"
	echo "		4.Modificacion de Tabla de Host"
	echo "		5.Agregar permisos de firewall"
	echo "		6.Editar DNS Server"
	echo "		7.Configurar Proxy"
	echo -e "		8.Salir de este menu\n"

	read -p "Digite la opcion deseada: " opcion
	echo "---------------------------------"
	case "$opcion" in
		"1")
			echo "Informacion del servidor:"
			echo ""
			hostnamectl
			echo ""
			read -p "Desea cambiar el nombre del servidor(Y/N)?: " op1
			if [ $op1 == 'Y' ] || [ $op1 == 'y' ]
				then
					echo ""
					read -p "Digite el nuevo nombre del servidor: " nombre
					echo ""
					sudo hostnamectl set-hostname "$nombre"
					echo ""
					echo "El cambio de nombre se ha realizado de manera satisfactoria"
					echo ""
					hostnamectl
			elif [ $op1 != 'Y' ] || [ $op1 != 'y' ] || [ $op1 != 'N' ] || [ $op1 != 'n' ]
				then
					echo "Opcion Invalida"
			fi
			;;
		"2")
			echo "Los discos existentes son: "
			sudo fdisk -l
			echo ""
			read -p "Ingrese el disco sobre el cual desea trabajar: " disco
			echo ""
			sudo fdisk /dev/$disco
			;;
		"3")
			echo "Esta es la opcion para cambiar IP servidor"
			echo ""
			read -p "Desea instalar net-tools(Y/N)?: " op3 
			if [ $op3 == 'Y' ] || [ $op3 == 'y' ]
				then
					sudo apt install net-tools
					echo ""
					echo "net-tools ha sido instalado"
			fi		
			echo ""
			ip addr show
			
			echo ""
			read -p "Digite la interfaz de la red la cual desea modificar: " red
			echo ""
			read -p "Digite la nueva IP: " IPn
			echo ""
			read -p "Digite la mascara de red: " mask
			echo ""
			sudo ifconfig $red $IPn netmask $mask
			echo ""
			echo "El cambio se a hecho satisfactoriamente"
			echo ""
			ip addr show
			;;
		"4")
			echo "MOdificacion de la tabla de host"
			sudo nano /etc/hosts
			echo ""
			echo "La tabla de hosts ha sido modificada"
			echo ""
			cd
			cd /etc 
			cat hosts
			;;
		"5")
		    echo "**************************************************************"
			echo " *    Esta es la opcion para agregar permisos de firewall  *"
			echo " "
			while :
			do
				echo "**************************************************************"
				echo " "
				echo "Escoja la opcion que desee para modificar"
				echo  "los permisos en su firewall"
				echo " "
				echo " "
				echo "1.Habilitar servicio"
				echo "2.Conocer el estado del firewall"
				echo "3.Habilitar puerto TCP"
				echo "4.Habilitar puerto UDP"
				echo "5.Habilitar rango puerto TCP"
				echo "6.Habilitar rango puerto UDP"
				echo "7.Probar con curl"
				echo "8.Salir al menu principal"
				echo "----------------------------------"
				read -p "Digite la opcion deseada: " op5
				echo "----------------------------------"
				case "$op5" in
					"1")
						sudo ufw enable
						echo ""
						;;
					"2")
						sudo ufw status
						echo ""
						;;
					"3")
						read -p "Ingrese el puerto TCP: " TCP
						sudo ufw allow $TCP/tcp
						echo ""
						;;
					"4")
						read -p "Ingrese el puerto UDP: " UDP
						sudo ufw allow $UDP/udp
						echo ""
						;;
					"5")
						sudo ufw allow 30000:32767/tcp
						echo ""
						;;
					"6")
						sudo ufw allow 30000:32767/udp
						echo ""
						;;
					"7")
						read -p "Ingrese la IP: " IPp
						echo ""
						read -p "Ingrese el puerto: " puertop
						echo ""
						curl -v telnet://$IPp:$puertop
						echo ""
						;;
					"8")
						break
						;;
				esac
			done 
			;;
		"6")
			echo "Esta es la opcion para editar DNS Serve"
			while :
			do
				echo "----------------------------------"
				echo "Opciones de configuracion DNS"
				echo "1.Instalar resolvconf"
				echo "2.Habilitar servicio DNS"
				echo "3.Detener servico DNS"
				echo "4.Estado del servicio DNS"
				echo "5.Reiniciar servico DNS"
				echo "6.Editar DNS"
				echo "7.Salir al menu principal"
				echo "----------------------------------"
				read -p "Digite la opcion deseada: " op6
				echo "----------------------------------"
				case "$op6" in
					"1")
						sudo apt install resolvconf
						echo ""
						;;
					"2")
						sudo service resolvconf start
						echo ""
						;;
					"3")
						sudo service resolvconf stop
						echo ""
						;;
					"4")
						sudo service resolvconf status
						echo ""
						;;
					"5")
						sudo service resolvconf restart
						echo ""
						;;
					"6")
						sudo nano /etc/resolv.conf 
						echo ""
						cat /etc/resolv.conf
						echo ""
						;;
					"7")
						break
						;;
				esac
			done
			;;
		"7")
			echo "Esta es la opcion para configurar proxy"
			echo "---------------------------------------"
			echo "Configuracion estandar del archivo Proxy"
			echo ""
			echo 'PROXY_ENABLED="yes"'
			echo 'HTTP_PROXY="ip:puerto"'
			echo 'HTTPS_PROXY="ip:puerto"'
			echo 'FTP_PROXY="ip:puerto"'
			echo 'NO_PROXY="localhost,127.0.01,"'
			echo ""
			echo "IMPORTANTE: RECUERDE COPIAR LA CONFIGURACION PROXY AL FINAL DEL DOCUMENTO"
			sleep 10
			cd
			sudo nano .bashrc
			echo ""
			echo "El proxy ha sido modificado"
			echo ""
			;;
		"8")
			break
			;;
	esac
done
