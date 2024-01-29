## Instalacion de docker. 

```
sudo apt update
```
Actualizo la lista de paquetes disponibles en el sistema para obtener la información más reciente.

```
sudo apt install apt-transport-https ca-certificates curl software-properties-common
```
Instalo las herramientas necesarias para manejar repositorios seguros y realizar descargas.

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```
Descargo la clave de GPG de Docker y la añado al sistema para asegurar la autenticidad de los paquetes de Docker.

```
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
```
Agrego el repositorio oficial de Docker a mi sistema para poder instalar Docker utilizando el sistema de paquetes.

```
sudo apt update
```
Actualizo nuevamente para incluir la información de los paquetes de Docker en la lista."

```
apt-cache policy docker-ce
```
Verifico las opciones de instalación de Docker para elegir la versión que necesito.

```
sudo apt install docker-ce
```
Instalo Docker en mi sistema.

```
sudo systemctl status docker
```
Verifico el estado del servicio Docker para asegurarme de que está instalado y en ejecución.

---
# Crear Grupo Docker y añadir Usuario. 

1. Crea el dockergrupo.

```
sudo groupadd docker
```

2. Añade tu usuario al dockergrupo.

```
sudo usermod -aG docker $USER
```

3. Cierre sesión y vuelva a iniciarla para que se reevalúe su membresía en el grupo.

```
newgrp docker
```
4. Verifique que pueda ejecutar dockercomandos sin sudo.

```
docker run hello-world
```
Este comando descarga una imagen de prueba y la ejecuta en un contenedor. Cuando el contenedor se ejecuta, imprime un mensaje y sale


