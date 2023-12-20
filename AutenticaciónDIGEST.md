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

Habilitar el módulo correspondiente:

```
sudo a2enmod auth_digest
```

Crear el fichero de claves:

```
sudo htdigest -c /etc/apache2/claves.txt grupo1 manoli
```

El parámetro -c se usa para crear el fichero. grupo1 es el nombre del "grupo" al que pertenece el usuario.

Nota: El nombre del grupo especificado en AuthName debe coincidir con el grupo utilizado en htdigest.

Reinicia Apache:

Guarda y cierra el archivo de configuración y luego reinicia Apache para aplicar los cambios:

```
sudo service apache2 restart
```
