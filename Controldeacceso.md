# Configuración de Acceso y Restricciones en Apache

- **Order deny,allow:** Hace que, por defecto, todos los clientes tengan permitido el acceso.

- **Order allow,deny:** Hace que, por defecto, ningún cliente tenga permitido el acceso.

- **Allow from:** Permite especificar clientes que tienen permitido el acceso. Ejemplo: Allow from 192.168.100.0/24 127.0.0.1

- **Deny from:** Permite especificar clientes que no tienen permitido el acceso. Ejemplo: Deny from 192.168.2.3

**Modificación del archivo /etc/hosts:**

Para probar desde otra máquina, modifica el archivo /etc/hosts agregando la IP del servidor y el nombre del sitio virtual.

Comando wget para pruebas desde otra máquina:

Utiliza el siguiente comando para realizar peticiones desde otra máquina: 

```
wget -nv -qO - url.
```

Ejercicios:
Configuración de Acceso y Restricciones:

Abre el archivo de configuración de Apache para el sitio virtual:

```
sudo nano /etc/apache2/sites-available/sitio1.conf
```

Añade las siguientes líneas para restringir el acceso basándose en direcciones IP:

```
<Directory /var/www/html>
    # Permitir a ciertas direcciones IP
    Order deny,allow
    Deny from all
    Allow from 192.168.1.0/24 127.0.0.1
</Directory>
```
![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/86d9c36f-0231-48db-b658-2d71b4e79057)


Guarda y cierra el archivo.

Reinicia Apache para aplicar los cambios:

```
sudo service apache2 restart
```

Modificación del archivo /etc/hosts:

En la máquina desde la cual deseas probar el acceso, modifica el archivo /etc/hosts agregando la IP del servidor y el nombre del sitio virtual:

```
192.168.1.9   www.sitio1.com
```
Guarda y cierra el archivo.

Prueba de Acceso Restringido:

Utiliza el comando wget desde la máquina remota para probar el acceso:

```
wget -nv -qO - http://www.sitio1.com
```

Este comando debería devolver el contenido de la página si la IP de la máquina remota está permitida y denegar el acceso si no lo está.

Desde otra IP

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/bec532d9-160d-4075-8ea3-49494c5b4110)

Desde la IP 192.168.1.9

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/4c226628-353b-4f0e-b9a9-bea3efb6f8b5)


