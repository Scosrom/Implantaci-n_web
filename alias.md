# Directiva Alias

La directiva Alias en Apache se utiliza para mapear una URL específica a una ubicación en el sistema de archivos que está fuera del DocumentRoot. Aquí está una explicación paso a paso:

### Paso 1: Abrir el Archivo de Configuración del Sitio Virtual

Abre el archivo de configuración del sitio virtual en el que deseas configurar Alias. Puedes utilizar el siguiente comando para abrir el archivo de configuración con privilegios de superusuario y un editor de texto:

```
sudo nano /etc/apache2/sites-available/tu_sitio_virtual.conf
```

### Paso 2: Agregar la Directiva Alias

Dentro del bloque <VirtualHost> de tu archivo de configuración, agrega la directiva Alias para mapear una URL a una ubicación específica en el sistema de archivos. Por ejemplo:

```
<VirtualHost *:80>
    ServerName www.tu-sitio1.com
    DocumentRoot /var/www/tu-sitio1

    Alias /info /www/sitio1/info
    Alias /contacto /www/sitio1/contacto

    <Directory /www/sitio1>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
    </Directory>

    # Otras configuraciones del sitio virtual...

</VirtualHost>
```
En este ejemplo, las líneas Alias están mapeando las URL /info y /contacto a las rutas /www/sitio1/info y /www/sitio1/contacto, respectivamente.

### Paso 3: Explicación de la Directiva Alias

- Alias /info /www/sitio1/info: Mapea la URL /info a la ruta del sistema de archivos /www/sitio1/info.

- Alias /contacto /www/sitio1/contacto: Mapea la URL /contacto a la ruta del sistema de archivos /www/sitio1/contacto.

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/9bcb3d26-b29d-4164-ab40-c3819fa05dd6)


### Paso 4: Bloque Directory Apropiado

Si estás utilizando Alias para mapear a rutas fuera de /var/www, asegúrate de tener un bloque <Directory> apropiado que permita el acceso a esas rutas, similar a lo explicado en el paso anterior

### Paso 5: Guardar y Cerrar el Archivo

Guarda los cambios y cierra el archivo de configuración.

### Paso 6: Reiniciar Apache

Después de realizar cambios en la configuración de Apache, reinicia el servicio para que los cambios surtan efect

```
sudo service apache2 restart
```
