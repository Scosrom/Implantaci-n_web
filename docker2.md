# Comandos Básicos contenedores:

Mostrar los contenedores en ejecución (Estado Up)

```
docker ps
```

Mostrar todos los contenedores creados ya estén en ejecución (Estado Up) o parados (Estado Exited)

```
docker ps -a
```


# Ejecutar Contenedores.

1. Básico

Descarhar una imagen:

```
docker pull ubuntu:18.04
```
Crear un contenedor de ubuntu:18.04 y tener acceso a un shell en él. Si no hemos descargado la imagen de manera previa se descargará.

```
docker run -it ubuntu:18.04 /bin/bash
```

2. Crear un contenedor de httpd (Servidor Apache)

```
docker run httpd
```

Para acceder al servidor Apache2 desde tu host, necesitas mapear el puerto del contenedor al puerto del host al ejecutar el contenedor. Puedes hacer esto utilizando el argumento -p de Docker. 

```
docker run -p 8080:80 httpd
```

Este comando mapea el puerto 80 del contenedor al puerto 8080 del host. Ahora, podrías acceder al servidor Apache2 desde tu host usando http://localhost:8080 en tu navegador web.

