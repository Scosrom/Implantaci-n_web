# 02. Creación de un sitio virtual

una explicación paso a paso sobre cómo configurar sitios virtuales en Apache en un entorno local utilizando /etc/hosts para simular dominios públicos.

### Paso 1: Editar /etc/hosts

Edita el archivo /etc/hosts para simular dominios públicos. Abre el archivo en un editor de texto con privilegios de superusuario:

```
sudo nano /etc/hosts
```

Añade líneas para cada dominio que deseas simular. Por ejemplo:

```
127.0.0.1   www.sitio1.com
127.0.0.1   www.sitio2.com
```
Guarda los cambios y cierra el editor.

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/5e043204-98c1-4f11-93b8-a87ff51376c1)


### Paso 2: Crear Carpeta para los Ficheros del Dominio

Crea una carpeta para los archivos del dominio en la ruta /var/www. Puedes hacerlo con:

```
sudo mkdir /var/www/sitio1
sudo mkdir /var/www/sitio2
```

### Paso 3: Ir a la Carpeta /etc/apache2/sites-available

```
cd /etc/apache2/sites-available
```

### Paso 4: Copiar Plantilla del Sitio por Defecto

```
sudo cp 000-default.conf sitio1.conf
```

### Paso 5: Editar el Fichero de Configuración del Sitio Virtual

Abre el archivo de configuración del sitio virtual en un editor de texto:

```
sudo nano sitio1.conf
```
Descomenta y cambia la directiva ServerName para que coincida con el nombre de dominio que deseas. Por ejemplo

```
ServerName www.sitio1.com
```

Cambia la directiva DocumentRoot para que apunte a la carpeta que creaste para el sitio:

```
DocumentRoot /var/www/sitio1
```

Guarda los cambios y cierra el editor.

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/952de2a7-2492-4bc9-a112-72e494ac89ca)


### Paso 6: Activar el Sitio

```
sudo a2ensite sitio1
```

### Paso 7: Recargar Apache

```
sudo service apache2 reload
```

Puedes repetir estos pasos para cada dominio adicional que desees configurar. Asegúrate de ajustar las rutas y nombres de dominio según tus necesidades específicas. Después de seguir estos pasos, podrás acceder a los sitios virtuales en tu navegador escribiendo las direcciones configuradas en el archivo /etc/hosts. Por ejemplo, http://www.sitio1.com y http://www.sitio2.com.



