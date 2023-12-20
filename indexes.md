# Options Indexes

La opción Options Indexes en la configuración de Apache controla si se permite o no la visualización de un listado de archivos en un directorio cuando no se encuentra un archivo de índice (por ejemplo, index.html). Aquí tienes una explicación paso a paso:

### Paso 1: Crear una Carpeta Compartida

Primero, crea una carpeta llamada "compartida" en la ubicación que desees. Puedes hacerlo con el siguiente comando:

```
sudo mkdir /var/www/compartida
```
Asegúrate de que la carpeta tiene algunos archivos.

### Paso 2: Abrir el Archivo de Configuración del Sitio Virtual

Abre el archivo de configuración del sitio virtual donde deseas activar la opción Indexes. Puedes utilizar el siguiente comando para abrir el archivo de configuración con privilegios de superusuario y un editor de texto:

```
sudo nano /etc/apache2/sites-available/tu_sitio_virtual.conf
```
### Paso 3: Agregar la Opción Indexes

Dentro del bloque <VirtualHost> de tu archivo de configuración, agrega la opción Indexes al conjunto de opciones. Por ejemplo:

```
<VirtualHost *:80>
    ServerName www.tu-sitio.com
    DocumentRoot /var/www/compartida

    <Directory /var/www/compartida>
        Options Indexes
        AllowOverride None
        Require all granted
    </Directory>

    # Otras configuraciones del sitio virtual...

</VirtualHost>
```
### Paso 4: Guardar y Cerrar el Archivo

Guarda los cambios y cierra el archivo de configuración.

### Paso 5: Reiniciar Apache

Después de realizar cambios en la configuración de Apache, reinicia el servicio para que los cambios surtan efecto:

```
sudo service apache2 restart
```

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/732f5a31-8000-42ca-b1d7-43b811c41949)



