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
![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/4790d2c9-7df2-4bab-8a7c-59cc8be128bc)

Comando para crear el fichero de usuarios:

```
htpasswd -c /etc/apache2/claves.txt juan
```
![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/5a4e7037-0c5d-403a-ac21-8cb15f1d960a)


El parámetro -c se utiliza para crear el fichero. Si el fichero ya existe, no debemos incluir ese parámetro para añadir otro usuario al fichero.

Intenta acceder a la parte protegida de tu sitio web (/var/www/miweb/privado) en tu navegador. Se te solicitará un nombre de usuario y una contraseña.

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/e0d46ba4-941c-42f1-928c-cd631d8099ea)

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
