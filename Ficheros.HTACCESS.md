# Instalación de AWStats en Debian

## Pasos

### Paso 1: Actualizar el Sistema

Asegúrate de que tu sistema esté actualizado antes de instalar AWStats.

```
sudo apt update
sudo apt upgrade -y
```

### Paso 2: Instalación de AWStats

```
sudo apt install awstats
```

### Paso 3: Configuración de AWStats

Edita el archivo de configuración de AWStats.

```
sudo nano /etc/awstats/awstats.conf
```

Ajusta la configuración según tus necesidades, especialmente la sección SiteDomain y LogFile.

### Paso 4: Configuración del LogFormat

Abre el archivo de configuración de Apache.

```
sudo nano /etc/apache2/apache2.conf
```

Asegúrate de que la configuración del LogFormat sea compatible con AWStats. Puedes agregar la siguiente línea:

```
LogFormat="%host %other %logname %time1 %methodurl %code %bytesd %refererquot %uaquot"
```

### Paso 5: Crear el Directorio para los Datos de AWStats

```
sudo mkdir -p /var/lib/awstats
sudo chown www-data:www-data /var/lib/awstats
```

### Paso 6: Actualizar los Datos de AWStats

```
sudo /usr/lib/cgi-bin/awstats.pl -config=awstats -update
```

### Paso 7: Acceder a AWStats desde el Navegador

Abre tu navegador y accede a la interfaz de AWStats.

```
http://sitio1/awstats/awstats.pl?config=awstats
```

### Paso 8: Simular Visitas

Puedes simular visitas con el comando ab. Por ejemplo, para simular 5000 visitas:

```
ab -n 5000 http://www.sitio1.com/
```

Recuerda poner la barra al final de la URL.

### Paso 9: Programar Tareas con crontab

Abre el editor crontab.


crontab -e

Agrega una línea para actualizar automáticamente los datos de AWStats (por ejemplo, cada hora).

```
0 * * * * /usr/lib/cgi-bin/awstats.pl -config=awstats -update
```
