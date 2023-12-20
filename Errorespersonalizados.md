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

Añade la siguiente línea para configurar el mensaje de error para el código 404:

```
ErrorDocument 404 /error/mensaje_404.html
```
![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/f4f488db-d9ef-4ac9-b5ff-57e505b9c507)


Guarda y cierra el archivo.

Reinicia Apache para aplicar los cambios:

```
sudo service apache2 restart
```
![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/77265e66-be10-47b6-84de-dc78076d132e)

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/b42480f4-8903-40bc-b599-423fd5c9b625)

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/c80dd661-da5f-46a3-8889-35a23578049b)



