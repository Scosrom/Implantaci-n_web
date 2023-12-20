Configuración de Apache para MultiViews:

Habilitar Options MultiViews en Apache:

Abre el archivo de configuración de Apache:

```
sudo nano /etc/apache2/sites-available/sitio1.conf
```

Añade la siguiente línea dentro del bloque <VirtualHost>:

```
Options MultiViews
```

Guarda y cierra el archivo.

Reinicia Apache para aplicar los cambios:

```
sudo service apache2 restart
```

Uso de Options MultiViews:

Si habilitas Options MultiViews, puedes tener diferentes páginas según el idioma del navegador. Por ejemplo, los archivos podrían llamarse index.html.es, index.html.en o index.html.de para español, inglés y alemán respectivamente.

Ejercicios:
Crear páginas para diferentes idiomas:

En tu directorio web, crea páginas HTML específicas para diferentes idiomas. Puedes usar el siguiente comando para crear un archivo:

```
touch index.html.es index.html.en index.html.de
```

Edita cada archivo con el contenido correspondiente.

Configurar la prioridad del idioma:

Abre el archivo de configuración de negociación:

```
sudo nano /etc/apache2/mods-enabled/negotiation.conf
```

Asegúrate de que la configuración refleje tus preferencias de idioma. Por ejemplo:

```
<IfModule mod_negotiation.c>
    LanguagePriority es en de
</IfModule>
```

Guarda y cierra el archivo.

Reinicia Apache para aplicar los cambios:

```
sudo service apache2 restart
```

Prueba de MultiViews:

Abre tu navegador y establece el idioma preferido. Accede a tu sitio web y observa si se muestra la página correspondiente al idioma.

Recuerda que la configuración de idioma puede depender de las preferencias del navegador del usuario. ¡Éxito con tus ejercicios y tu repositorio GitHub!
