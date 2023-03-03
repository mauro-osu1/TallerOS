# Danny Mauricio Osuna
 <h1 align="center">Taller 2 Sistemas Operativos</h1>
 <h1 align="justify">Parte 1</h1>
<div id="header" align="center">
    <img src="/imagenes taller/Puntos.png" width="1000" />
    <h1 align="justify">Punto 1</h1>
    <h3 align="justify">Con la línea de comando touch archivo1.txt | locate *.sh > archivo.txt |cat archivo.tx 
Se crea un archivo llamado archivo.txt, se busca todos los archivos con extensión .sh y los escribe en el archivo archivo.tx luego con cat se muestra el contenido del archivo en pantalla. </h3>
  <img src="/imagenes taller/Imagen1_punto1.png" width="700" />
 <img src="/imagenes taller/Imagen2_punto1.png" width="700" />
<h1 align="justify">Punto 2</h1>
 <h3 align="justify">En este paso, se realiza la creación de un archivo que se llama Entrada.in y se escribe las palabras Archivo1, Archivo2, Archivo3 y Archivo4. Luego se crea una carpeta llamada file_salida en el directorio home/Ubuntu. Se crea una Shell la cual se encarga de crear los archivos con los nombres guardados en el archivo Entrada.in y los crea con la extensión .txt y los ubica en la carpeta file_salida.
Se realiza la autorización de la Shell con el comando chmod +x y luego se ejecuta con ./Shell.sh y luego se crea un archivo Salida.out con el comando touch y con la línea de comando: Ls -p file_salida/ | grep -v / > salida.out se guarda el nombre de los archivos en el archivo creado anteriormente Salida.out. Finalmente con el comando nl Salida.out se muestra enumerado el listado de los nombres de los archivos en la pantalla. </h3>
 <img src="/imagenes taller/Imagen1_punto2.png" width="700" />
<h1 align="justify">Punto 3</h1>
<h3 align="justify">En este punto se crea un archivo llamado Entrada.in y se escribe las palabras Archivo1.csv, Archivo2.txt y Archivo3.sh. Luego se crea un Shell para que creer archivos y los llame con las palabras escritas en el archivo Entrada.in y también elimine el archivo con extensión .sh. 
Luego se autoriza la Shell con el comando chmod +x
Luego se crea un archivo con el nombre Salida.out y se escribe dentro el nombre de los archivos creados anteriormente y con el comando nl se muestra en pantalla el contenido enumerado del archivo Salida.out</h3>
 <img src="/imagenes taller/Imagen1_punto3.png" width="700" />
<h1 align="justify">Punto 4</h1>
<h3 align="justify">En este punto se crea una Shell para crear archivos a partir de las palabras escritas en el archivo Salida.out y agregarle al final del nombre la palabra -mv.txt</h3>
 <img src="/imagenes taller/Imagen1_punto4.png" width="700" />

<h1 align="justify">____________________________________________________________________________</h1>
 <h1 align="justify">Parte 2</h1>
 
 <h3 align="justify">Se genera una Shell en la cual se crea un menú con las opciones solicitadas en el taller que le permita al usuario escoger la acción que desea realizar en la configuración del servidor, como se observa en la siguiente imagen: </h3>
 
 <h3 align="justify">1. Para la opción cambio de nombre del servidor se ejecuta el comando hostnamectl el cual muestra toda la información actual del servidor y luego se le pregunta al usuario si desea hacer el cambio del nombre del servidor.
Si el usuario digita “Y o y”, se le solicitara al usuario que escriba el nuevo nombre al servidor y este se guarda en la variable $nombre y se ejecuta el siguiente comando: sudo hostnamectl set-hostname "$nombre" 
Por ultimo se le muestra en la pantalla al usuario la información del servidor con el nuevo nombre asignado como se observa en la siguiente imagen: </h3>

 <h3 align="justify">2. Para la opción Cambiar Partición de los discos, se le presenta al usuario las particiones existentes y luego se le solicita al usuario que digite la partición que desea modificar, luego se abrirá el menú para que realice el cambio que desee, como se observa en las siguientes imágenes: </h3>
 
 <h3 align="justify">3. En esta opción el usuario tiene la opción de cambiar la dirección IP del servidor, primero se le pregunta al usuario si dese realizar la instalación del net-tools debido a que es necesario tener instalado este aplicativo para que se pueda realizar el cambio de la IP, una vez realizada la instalación se muestra en pantalla la información de las interfaces del servidor y se le solicita al usuario que ingrese el nombre de la interface que desea cambiarle la IP, la dirección nueva y la mascara que va tener. Finalmente se muestra un mensaje confirmando el cambio de la IP y la información completa del estado actualizado de las interfaces, este código se puede observar en la siguiente imagen: </h3>
 
 <h3 align="justify">4. En la opción modificación de cambio de host se le da acceso al usuario al archivo hosts del sistema para que pueda agregar o eliminar direcciones de hosts como se puede evidenciar en la siguiente imagen del código: </h3>
 
 
 <h3 align="justify">5. En esta opción el usuario puede modificar los permisos del firewall según el menú de opciones que se le muestran en la pantalla como se puede observar en las siguientes imágenes: </h3>
 
 <h3 align="justify">6. En la siguiente opción se le muestra al usuario un menú con las opciones para que pueda realizar las configuraciones de DNS con los siguientes comandos: </h3>
<h3 align="justify">1.Instalar resolvconf:		       sudo apt install resolvconf</h3>
<h3 align="justify">2.Habilitar servicio DNS:    		sudo service resolvconf start</h3>
<h3 align="justify">3.Detener servico DNS:		sudo service resolvconf stop</h3>
<h3 align="justify">4.Estado del servicio DNS:		sudo service resolvconf status</h3>
<h3 align="justify">5.Reiniciar servico DNS:		sudo service resolvconf restart</h3>
<h3 align="justify">6.Editar DNS:			sudo nano /etc/resolv.conf</h3>

 
 <h3 align="justify">7. En esta opción el usuario puede realizar la modificación del archivo donde se alojan las configuraciones del proxy, por esta razón se le presenta una plantilla de como debe digitar la informacion para que se guie y realice la configuracion de manera adecuada, como se puede ver en la siguiente imagen: </h3>
 
