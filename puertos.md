# Puertos de escucha

Para añadir puertos de escucha a parte del puerto por defecto 80 hay que editar el fichero /etc/apache2/ports.conf

- En el fichero usamos la directiva Listen para añadir nuevos puertos de escucha


![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/6ceb3141-4d08-48d8-a9a4-8dcd7b325c84)

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/025eabc1-d4e2-4958-9953-4ce4209e330a)


- Para que los sitios virtuales funcionen en los puertos de escucha añadidos hay que editar el fichero de configuración del sitio y poner algo parecido a lo siguiente: 
<VirtualHost *:80 *.90>

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/da9dba66-6377-436d-9292-1726d3be88c4)
