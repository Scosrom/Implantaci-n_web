# Docker-Compose

Docker Compose es una herramienta que permite definir y gestionar aplicaciones Docker multi-contenedor. Docker es una plataforma de contenedores que facilita la creación, distribución y ejecución de aplicaciones en entornos aislados llamados contenedores.

Docker Compose utiliza un archivo YAML para definir la configuración de la aplicación, incluyendo servicios, redes y volúmenes, y luego permite gestionar y coordinar la ejecución de esos servicios. Esto simplifica el proceso de lanzar aplicaciones complejas que constan de múltiples contenedores.

<code>Linux</code>

Descarga del fichero mediante la orden curl y colocación en el directorio adecuado. Actualmente (Enero 2021) la versión vigente es la 1.27.4

```
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

Concesión de los permisos de ejecución

```
sudo chmod +x /usr/local/bin/docker-compose
```

Comprobación de que la instalación está correcta.

```
docker-compose --version
```

docker-compose version 1.27.4, build 40524192
