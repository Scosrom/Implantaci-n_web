
![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/051bc2b1-bb32-46b8-877c-0c412f84cad9)

GoAccess es una herramienta de línea de comandos que proporciona análisis en tiempo real de los registros del servidor web. 

### Instalación de GoAccess en Debian:

#### Actualiza el índice de paquetes:

```
sudo apt update
```

#### Instala GoAccess:

```
sudo apt install goaccess
```

#### Uso básico de GoAccess:

Analiza un archivo de registro existente:

```
goaccess /var/log/apache2/access.log
```
![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/8566b42c-273b-4514-b001-d6fc575ead95)


Sustituye /ruta/al/archivo/access.log con la ruta real de tu archivo de registro.

### Análisis en tiempo real (streaming) desde un archivo de registro:

```
tail -f /ruta/al/archivo/access.log | goaccess -
```

Esto es útil para ver los datos en tiempo real mientras se están generando.

Interfaz gráfica en terminal con informes HTML:

```
goaccess -f /var/log/apache2/access.log -o /var/www/html/go.html --log-format=COMBINED
```

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/3d723cc9-251f-4e65-8812-74227fcfd093)
