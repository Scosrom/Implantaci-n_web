| Comando                                          | Descripción                                   |
|--------------------------------------------------|-----------------------------------------------|
| `docker pull nombre_imagen`                      | Descarga una imagen desde Docker Hub           |
| `docker build -t nombre_imagen .`                | Construye una imagen desde un Dockerfile       |
| `docker images`                                  | Lista las imágenes en el sistema              |
| `docker ps`                                      | Lista los contenedores en ejecución           |
| `docker ps -a`                                   | Lista todos los contenedores                  |
| `docker run nombre_imagen`                       | Crea y ejecuta un nuevo contenedor            |
| `docker exec -it nombre_contenedor comando`      | Ejecuta un comando dentro de un contenedor    |
| `docker stop nombre_contenedor`                   | Detiene un contenedor en ejecución            |
| `docker start nombre_contenedor`                  | Inicia un contenedor detenido                 |
| `docker restart nombre_contenedor`                | Detiene y reinicia un contenedor              |
| `docker rm nombre_contenedor`                    | Elimina un contenedor                         |
| `docker rmi nombre_imagen`                       | Elimina una imagen                            |
| `docker logs nombre_contenedor`                  | Muestra los logs de un contenedor             |
| `docker network ls`                              | Lista las redes disponibles en Docker        |
| `docker volume ls`                               | Lista los volúmenes disponibles en Docker    |
| `docker-compose up -d`                           | Inicia servicios definidos en docker-compose  |
| `docker-compose down`                            | Detiene y elimina servicios de docker-compose|
