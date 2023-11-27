# DirectoryIndex

La directiva DirectoryIndex en Apache especifica el nombre de la página principal que se debe cargar si no se especifica un nombre de archivo en la URL. Su objetivo es facilitar la configuración del servidor web para encontrar la página principal de un directorio cuando se accede a dicho directorio a través de un navegador.

### 1. Acceder al Fichero de Configuración:

Abre el archivo de configuración del sitio virtual de Apache. Puede estar ubicado en /etc/apache2/sites-available/ y suele tener una extensión .conf.

### 2.  Localizar la Directiva DirectoryIndex:

```
DirectoryIndex index.html
```

### 3. Entender la Configuración:

En el ejemplo anterior, se configura para que Apache busque un archivo llamado index.html como la página principal de un directorio si no se especifica un nombre de archivo en la URL.

### 4. Configurar Múltiples Valores (Opcional):

Puedes especificar varios valores para la directiva, y Apache intentará buscarlos en el orden en que se enumeran. Por ejemplo:

```
DirectoryIndex index.html index.php
```
En este caso, primero se intentará encontrar un archivo index.html, y si no se encuentra, se buscará un archivo index.php.

### 5. Guardar y Salir:

Guarda los cambios en el archivo de configuración y ciérralo.

### 6. Recargar la Configuración de Apache:

Ejecuta el siguiente comando para recargar la configuración de Apache y aplicar los cambios:

```
sudo systemctl reload apache2
```


