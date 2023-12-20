La directiva Directory en Apache se utiliza para configurar opciones específicas para un directorio particular en el sistema de archivos. En este caso, se está utilizando para permitir la publicación de archivos desde una ruta específica en lugar de la ubicación predeterminada /var/www. Aquí hay una explicación paso a paso:

### Paso 1: Abrir el Archivo de Configuración del Sitio Virtual

Abre el archivo de configuración del sitio virtual en el que deseas permitir la publicación de archivos desde una ruta específica. Puedes utilizar el siguiente comando para abrir el archivo de configuración con privilegios de superusuario y un editor de texto:

```
sudo nano /etc/apache2/sites-available/tu_sitio_virtual.conf
```

### Paso 2: Agregar el Bloque Directory

Dentro del bloque <VirtualHost> de tu archivo de configuración, agrega el bloque <Directory> para la ruta específica en la que deseas permitir la publicación de archivos. Por ejemplo, si quieres permitir la publicación de archivos desde /www/sitio1, tu bloque <Directory> podría verse así:

```
<VirtualHost *:80>
    ServerName www.tu-sitio1.com
    DocumentRoot /www/sitio1

    <Directory /www/sitio1>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
    </Directory>

    # Otras configuraciones del sitio virtual...

</VirtualHost>
```
### Paso 3: Explicación de las Directivas Dentro del Bloque Directory

- **Options:** Especifica qué opciones están disponibles en un directorio particular. En este caso, Indexes permite la visualización de un índice de archivos cuando no hay un archivo de índice (como index.html).

- **FollowSymLinks:** Permite que el servidor web siga enlaces simbólicos dentro del directorio.

- **AllowOverride:** Determina qué configuraciones de .htaccess se permiten en el directorio. En este caso, se establece en None, lo que significa que no se permiten configuraciones de .htaccess.

- **Require all granted:** Permite el acceso a todos los clientes.

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/61a70cae-ccac-4f01-9233-8ee75ffbb705)


### Paso 4: Guardar y Cerrar el Archivo

Guarda los cambios y cierra el archivo de configuración.

### Paso 5: Reiniciar Apache

Después de realizar cambios en la configuración de Apache, es necesario reiniciar el servicio para que los cambios surtan efecto:

```
sudo service apache2 restart
```

