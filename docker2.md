## Creación de una imagen de Docker
```
echo -e "echo 'Hello from Docker'" > entrypoint.sh && echo -e "FROM ubuntu:20.04\nCOPY entrypoint.sh /entrypoint.sh\nENTRYPOINT [\"/bin/sh\", \"/entrypoint.sh\"]" > Dockerfile && docker build . -t my_docker_image && docker run -t my_docker_imagedocker ps
```

Desglose comando:

Crear un script de entrada (entrypoint.sh):

Este comando crea un archivo llamado entrypoint.sh que contiene el comando echo 'Hello from Docker'.

```
echo -e "echo 'Hello from Docker'" > entrypoint.sh
```

Crear un Dockerfile:

Este comando crea un archivo llamado Dockerfile que contiene las instrucciones para construir la imagen Docker.

```
echo -e "FROM ubuntu:20.04\nCOPY entrypoint.sh /entrypoint.sh\nENTRYPOINT [\"/bin/sh\", \"/entrypoint.sh\"]" > Dockerfile
```

Construir la imagen Docker:

Este comando utiliza el Dockerfile y el contexto actual (.) para construir la imagen, asignándole el nombre (-t) "my_docker_image".

```
docker build . -t my_docker_image
```

Ejecutar un contenedor basado en la nueva imagen:

Este comando ejecuta un contenedor basado en la imagen recién construida.

```
docker run -t my_docker_image
```

Mostrar información sobre los contenedores en ejecución:

Este comando intenta mostrar información sobre los contenedores en ejecución. Sin embargo, hay un pequeño error tipográfico, debería ser docker ps en lugar de docker psdocker.

```
docker ps
```
