![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/180c532c-2796-41ad-bfd2-f46975293f54)

```
nano docker-compose.yml
```
En este archivo, defines la configuración para dos servicios: web y datos. El servicio web es tu servidor web de WordPress y el servicio datos es tu servidor de base de datos.

Este archivo define servicios, volúmenes y redes necesarios para tu entorno Docker.

Dentro de este fichero pegamos el siguiente contenido: 

```
version: '3'
services:
  
  #-------------------------------------------------------------------------
  # SERVICIO SERVIDOR WEB (php:7.4-apache con mysqli y código WP descargado
  #-------------------------------------------------------------------------
  web:
    # IMAGEN USADA
    image: jperjim398/miwp
    # NOMBRE QUE LE VOY A DAR AL CONTENEDOR
    container_name: web
    # REDIRECCIÓN DE PUERTOS
    ports:
      - 8181:80     
    # SERVICIOS QUE TIENEN QUE ARRANCAR ANTES DE ARRANCAR ESTE
    depends_on:
     - datos
    # REDES A USAR
    networks:
      - ejemplo
  
  #--------------------------------------------------
  # SERVICIO SERVIDOR DE BASE DE DATOS MARIADB
  #--------------------------------------------------

  # NOMBRE DEL SERVICIO
  datos:
    # IMAGEN USADA
    image: mariadb
    # NOMBRE QUE LE VOY A DAR AL CONTENEDOR
    container_name: bd
    # LISTA DE VALORES DE ENTORNO CON SUS VALORES
    environment:
      MYSQL_ROOT_PASSWORD: 123456
      MYSQL_DATABASE: wordpress
      MYSQL_USER: pepe
      MYSQL_PASSWORD: pepe
    # REDIRECCIÓN DE PUERTOS
    ports:
      - 3316:3306
    # VOLÚMENES A USAR POR EL CONTENEDOR
    volumes:
      # DOCKER VOLUME
      - data:/var/lib/mysql
    # REDES A USAR
    networks:
      - ejemplo

# DEFINICIÓN DE VOLÚMENES DOCKER A USAR POR LOS SERVICIOS (OPCIONAL)
volumes:
  data:
    # TIPO DE DRIVER
    driver: local

# DEFINICIÓN DE LAS REDES A USAR POR LOS SERVICIOS (OPCIONAL)
networks:
  # NOMBRE DE LA RED
  ejemplo:
    # DRIVER DE LA RED
    driver: bridge
    ipam:
      driver: default
      config:         
        - subnet: 172.20.0.0/16
```

Ejecutamos el fichero

```
docker-compose up
```

Nos encontraremos un problema, y es que Wordpress y Mysql cogeran la ip "localhost" y podremos tener problemas
si queremos abrir la página desde otra red. También tendremos problemas en servicios como Amazon, que cambia frecuentemente la ip.
Para solventar esto hacemos lo siguiente:

Entramos en nuestro contenedor web.

```
# Para saber como se llama nuestro contenedor.

docker ps -a
```

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/24f95364-9143-4220-a1cc-908e452d0402)

En names nos aparece el nombre de nuestras máquinas, en este caso queremos entrar dentro de "web", entonces ejecutamos: 

```
docker exec -it web /bin/Bash
```

Podemos sustituir web por el nombre de la maquina en la que quieras entrar. 

Dentro del contenedor ejecutamos: 

```
nano wp-config.php
```

Y tenemos que pegar las siguientes lineas dentro de este archivo: 

```
define('WP_HOME', 'http://' . $_SERVER['HTTP_HOST']);
define('WP_SITEURL', 'http://' . $_SERVER['HTTP_HOST']);
```
Este código se utiliza en WordPress para dinámicamente definir las constantes WP_HOME y WP_SITEURL basándose en la información del servidor web. Estas constantes son parte de la configuración de WordPress y se utilizan para especificar las URL base de tu sitio.
