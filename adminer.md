# Instalación de Adminer

### Actualiza el índice de paquetes

```
sudo apt update
```

### Instala Adminer

```
sudo apt install adminer
```

### Habilita el módulo FastCGI (si no está habilitado)

```
sudo a2enmod fastcgi alias
```

### Crea un enlace simbólico para habilitar el sitio de Adminer

```
sudo ln -s /usr/share/adminer/adminer.php /var/www/html/adminer/adminer.php
```

### Reinicia Apache

```
sudo service apache2 restart
```

Para acceder:

```
http://localhost/adminer/adminer.php
```


![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/9ed04a6f-2ddc-4767-adaf-9b63149a36d8)

Introducimos Usuario y contraseña previamente creados en nuestra base de datos.

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/9a53b163-05c2-4675-ba37-b8a407c56561)

Adminer ofrece una interfaz intuitiva para gestionar bases de datos, donde puedes realizar consultas SQL, importar/exportar datos y más.

