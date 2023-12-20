# Configuración de Apache con ErrorDocument y Host Virtual:

Uso de ErrorDocument en Apache:

La directiva ErrorDocument en Apache se utiliza con la sintaxis ErrorDocument codigo_error mensaje_o_url. Ejemplo:

```
ErrorDocument 404 /error/mensaje.html
```

Los códigos de error más habituales son:

404: Página no encontrada.
403: Sin permisos.
500: Error interno del servidor.

Ejercicios:
Configuración de Mensaje de Error para el Código 500:

Abre el archivo de configuración de Apache:

```
sudo nano /etc/apache2/sites-available/sitio1.conf
```

Añade la siguiente línea para configurar el mensaje de error para el código 500:

```
ErrorDocument 500 /error/mensaje_500.html
```

Guarda y cierra el archivo.

Reinicia Apache para aplicar los cambios:

```
sudo service apache2 restart
```

