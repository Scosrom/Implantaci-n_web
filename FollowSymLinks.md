# Activar la opción FollowSymLinks en Apache:
Abre el archivo de configuración de Apache. Puedes usar un editor de texto como nano o vi. Por ejemplo:

```
sudo nano /etc/apache2/sites-available/sitio1.conf
```
Añade la siguiente línea dentro del bloque <VirtualHost>:

```
Options FollowSymLinks
```

El bloque podría verse así:

```
<VirtualHost *:80>
    # Otras configuraciones...
    Options FollowSymLinks
    # Otras configuraciones...
</VirtualHost>
```

Guarda y cierra el archivo.

Reinicia Apache para aplicar los cambios:

```
sudo service apache2 restart
```

Crear enlaces simbólicos:
Abre la terminal y navega al directorio donde deseas crear el enlace simbólico.

Utiliza el comando ln -s para crear el enlace simbólico. Por ejemplo:

```
ln -s /ruta/del/origen /ruta/del/enlace
```

Para un ejemplo específico:

```
ln -s /var/www/html/publico /var/www/sitio1/ficheros
```

Puedes verificar que el enlace simbólico se ha creado correctamente usando el comando ls -l:

```
ls -l /var/www/sitio1/ficheros
```
