# Configuración de Autenticación BASIC en Apache:

Configuración de ejemplo para proteger mediante autenticación un usuario:

```
<Directory "/var/www/miweb/privado">
    Order deny,allow
    AuthUserFile "/etc/apache2/claves.txt"
    AuthName "Palabra de paso"
    AuthType Basic
    Require valid-user
</Directory>
```

Comando para crear el fichero de usuarios:

```
htpasswd -c /etc/apache2/claves.txt juan
```

El parámetro -c se utiliza para crear el fichero. Si el fichero ya existe, no debemos incluir ese parámetro para añadir otro usuario al fichero.

Ejercicios:
Configuración de Autenticación BASIC:

Abre el archivo de configuración de Apache:

```
sudo nano /etc/apache2/sites-available/sitio1.conf
```

Agrega las siguientes líneas dentro del bloque <VirtualHost>:

```
<VirtualHost *:80>
    # ... otras configuraciones ...

    <Directory "/var/www/miweb/privado">
        Order deny,allow
        AuthUserFile "/etc/apache2/claves.txt"
        AuthName "Palabra de paso"
        AuthType Basic
        Require valid-user
    </Directory>

    # ... otras configuraciones ...
</VirtualHost>
```

Guarda y cierra el archivo.

Creación del fichero de usuarios:

Utiliza el siguiente comando para crear el fichero de usuarios y agregar el usuario "juan":

```
sudo htpasswd -c /etc/apache2/claves.txt juan
```

Introduce la contraseña cuando se te solicite.

Prueba de Autenticación y Gestión de Usuarios:

Intenta acceder a la parte protegida de tu sitio web (/var/www/miweb/privado) en tu navegador. Se te solicitará un nombre de usuario y una contraseña.

Para añadir otro usuario al fichero, utiliza el siguiente comando (sin el parámetro -c):

```
sudo htpasswd /etc/apache2/claves.txt otro_usuario
```

Para cambiar la contraseña de un usuario, puedes usar el mismo comando con el parámetro -c:

```
sudo htpasswd /etc/apache2/claves.txt juan
```

Introduce la nueva contraseña cuando se te solicite.

Si deseas eliminar un usuario, abre el fichero /etc/apache2/claves.txt con un editor de texto y elimina la línea correspondiente al usuario que deseas borrar.

Reinicia Apache:

Guarda y cierra el archivo de configuración y luego reinicia Apache para aplicar los cambios:

```
sudo service apache2 restart
```
