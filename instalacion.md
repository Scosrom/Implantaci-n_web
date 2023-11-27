Para instalar Apache2 haz lo siguiente ( como administrador ):

```
apt-get update
apt-get install apache2
```

Los ficheros de configuración se encuentan en /etc/apache2

Para trabajar con el servicio:

```
service apache2 start  --> para arrancar
service apache2 stop  --> para pararlo
service apache2 restart --> reinicia ( equivalente a hacer stop y luego start )
service apache2 reload --> recargar la configuración
service apache2 status --> comprobamos el estado del servicio
```

La ruta de publicación por defecto se encuentra en /var/www/html

Para comprobar si existen errores de sintaxis en los ficheros de configuración:

```
apache2ctl -t
```

Para evitar el mensaje de advertencia al ejecutar el comando anterior hay que añadir un ServerName en el fichero /etc/apache2/apache2.conf. Por ejemplo: ServerName www.iescamp.es
