Los sitios virtuales permite que un único servidor Apache pueda servir las páginas de varios dominios. Esto es posible gracias a que los navegadores envían siempre una cabecera Host que permite saber al servidor cuál es el dominio que se está solicitando.

Pasos:
- Si no se dispone de un servidor público en Internet y dominios públicos tenemos que editar el fichero
  /etc/hosts del servidor y añadir entradas para cada dominio

- Creamos una carpeta para poner los ficheros del dominio dentro de /var/www

- Vamos a la carpeta
  
```
- /etc/apache2/sites-available
```

- Copiamos la "plantilla" del sitio por defecto. Por ejemplo: cp 000-default.conf sitio1.conf Tenemos que asegurarnos que los ficheros de configuración de los sitios virtuales acaban en .conf

- Editamos el fichero de configuración del sitio virtual

- Descomentamos y cambiamos la directiva ServerName y ponemos el nombre del dominio. Por ejemplo ServerName www.sitio1.com

- Cambiarmos la directiva DocumentRoot para que apunte a la carpeta de publicación del dominio

- Activamos el sitio. Por ejemplo a2ensite sitio1

- Recargamos Apache con service apache2 reload
