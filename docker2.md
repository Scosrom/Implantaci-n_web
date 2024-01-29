## Creación de una imagen de Docker
```
mkdir mi_proyecto_docker
cd mi_proyecto_docker
nano Dockerfile
```

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

```
nano hello.sh
```
Dentro del script

```
echo 'Hello from Docker'
```
```
sudo docker build -t mi_imagen_docker .
sudo docker run -t mi_imagen_docker
```
