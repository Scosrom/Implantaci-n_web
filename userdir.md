# Configuración de Páginas Personales con UserDir en Apache

Introducción
Este tutorial aborda la configuración de páginas personales con el módulo UserDir en el servidor web Apache en sistemas basados en Debian/Ubuntu. UserDir permite a los usuarios publicar sus páginas web personales en un directorio específico de su carpeta de inicio.

Pasos Básicos

### Paso 1: Activar el Módulo UserDir
Para habilitar el módulo UserDir en Apache, utiliza el comando a2enmod:

```
sudo a2enmod userdir
```

### Paso 2: Reiniciar Apache

Después de activar el módulo UserDir, reinicia Apache para aplicar los cambios:

```
sudo service apache2 restart
```

Configuración de Páginas Personales para Usuarios

### Paso 3: Crear la Carpeta public_html

Los usuarios que deseen publicar sus páginas deben crear una carpeta llamada public_html en su directorio de inicio. Por ejemplo, si el nombre de usuario es "pepe", la ruta completa sería /home/pepe/public_html.

### Paso 4: Acceder a las Páginas Personales

Los visitantes pueden acceder a las páginas personales de los usuarios utilizando URLs similares a la siguiente:

```
http://www.tusitio.com/~nombredeusuario
```

Donde nombredeusuario es el nombre del usuario cuyas páginas personales se quieren visitar.

Ejemplo Práctico
Supongamos que el usuario "pepe" desea publicar sus páginas personales.

Pepe crea la carpeta public_html en su directorio de inicio:

```
mkdir ~/public_html
```

Pepe agrega sus archivos HTML y recursos a la carpeta public_html.

Los visitantes pueden acceder a las páginas personales de Pepe utilizando:


```
http://www.tusitio.com/~pepe
```

Consejos Adicionales
Asegúrate de que el directorio public_html tenga los permisos adecuados para que Apache pueda acceder a los archivos:

```
chmod 755 ~/public_html
```

Algunas distribuciones pueden requerir configuraciones adicionales para permitir UserDir. Asegúrate de revisar la documentación específica de tu distribución si encuentras problemas.
