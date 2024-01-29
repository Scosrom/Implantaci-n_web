## Creación de una imagen de Docker
```
mkdir mi_proyecto_docker
cd mi_proyecto_docker
```
Esto crea un nuevo directorio llamado mi_proyecto_docker y navega al interior del mismo.

```
nano Dockerfile
```
Abre un editor de texto llamado nano para crear el archivo Dockerfile. Dentro de este archivo, colocamos las instrucciones para construir nuestra imagen Docker.

Tenemos que tener algo asi:
```
# Usa una imagen oficial de Ubuntu como imagen principal
FROM ubuntu:20.04

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el contenido del directorio actual al contenedor en /app
COPY . /app

# Ejecuta hello.sh cuando se inicia el contenedor
CMD ["sh", "hello.sh"]
```
Este Dockerfile especifica que queremos utilizar la imagen oficial de Ubuntu 20.04, establecer el directorio de trabajo dentro del contenedor en /app, copiar el contenido del directorio actual al contenedor, y ejecutar el script hello.sh cuando el contenedor se inicia.

```
nano hello.sh
```
Abre un editor de texto para crear el script hello.sh. Dentro del script, añadimos el siguiente contenido:

```
echo 'Hello from Docker'
```

```
sudo docker build -t mi_imagen_docker .
```
Este comando construye la imagen Docker utilizando el Dockerfile presente en el directorio actual (.) y le asigna el nombre mi_imagen_docker.

```
sudo docker run -t mi_imagen_docker
```
Este comando ejecuta un contenedor basado en la imagen mi_imagen_docker que acabamos de construir. Deberías ver la salida del script hello.sh.


