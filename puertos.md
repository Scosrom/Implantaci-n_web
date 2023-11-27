# Puertos de escucha

Para añadir puertos de escucha a parte del puerto por defecto 80 hay que editar el fichero /etc/apache2/ports.conf

- En el fichero usamos la directiva Listen para añadir nuevos puertos de escucha

- Para que los sitios virtuales funcionen en los puertos de escucha añadidos hay que editar el fichero de configuración del sitio y poner algo parecido a lo siguiente: 
<VirtualHost *:80 *.90>
