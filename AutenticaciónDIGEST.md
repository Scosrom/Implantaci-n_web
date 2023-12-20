# Configuración de Autenticación DIGEST en Apache:

Configuración de ejemplo para proteger una carpeta mediante autenticación DIGEST:

```
<Directory "/var/www/sitio1/privado">
    Order deny,allow
    AuthType Digest
    AuthName "grupo1"
    AuthUserFile "/etc/apache2/claves.txt"
    Require valid-user
</Directory>
```

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/1e7e4ac6-4cea-4bbc-a1c5-7ad3fe3472f1)


Habilitar el módulo correspondiente:

```
sudo a2enmod auth_digest
```

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/08890166-4c35-4fae-b4ec-1d7d98fad9d9)


Crear el fichero de claves:

```
sudo htdigest -c /etc/apache2/claves.txt grupo1 manoli
```

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/dcba94ee-7141-487a-8162-a8e2d9e5b8ad)


El parámetro -c se usa para crear el fichero. grupo1 es el nombre del "grupo" al que pertenece el usuario.

Nota: El nombre del grupo especificado en AuthName debe coincidir con el grupo utilizado en htdigest.

Reinicia Apache:

Guarda y cierra el archivo de configuración y luego reinicia Apache para aplicar los cambios:

```
sudo service apache2 restart
```

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/2ff29af7-ef0b-4d0f-9846-a1592d6dbd1e)
