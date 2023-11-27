## Configurar conexión https:

Instale el servidor Apache y los paquetes necesarios.
```
apt-get update
apt-get install apache2 openssl
```

Habilite el módulo Apache con el nombre: Mod_ssl.
Habilite el módulo Apache con el nombre: Mod_rewrite.

```
a2enmod ssl
a2enmod rewrite
```

Cree una clave privada y el certificado de sitio web mediante el comando OpenSSL.

```
mkdir /etc/apache2/certificate

cd /etc/apache2/certificate

openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out apache-certificate.crt -keyout apache.key
```



En la opción denominada COMMON_NAME, debe introducir la dirección IP o el nombre de host.




Edite el archivo de configuración de Apache para el sitio web predeterminado.


```
nano /etc/apache2/sites-enabled/000-default.conf
```

Aquí está el archivo, después de nuestra configuración.


```
<VirtualHost *:443>
        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
        SSLEngine on
        SSLCertificateFile /etc/apache2/certificate/apache-certificate.crt
        SSLCertificateKeyFile /etc/apache2/certificate/apache.key
</VirtualHost>
```

Opcionalmente, es posible que desee redirigir a los usuarios HTTP a la versión HTTPS de su sitio web.
En este caso, utilice la siguiente configuración.

```
<VirtualHost *:80>
        RewriteEngine On
        RewriteCond %{HTTPS} !=on
        RewriteRule ^/?(.*) https://%{SERVER_NAME}/$1 [R=301,L]
</virtualhost>
<VirtualHost *:443>
        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
        SSLEngine on
        SSLCertificateFile /etc/apache2/certificate/apache-certificate.crt
        SSLCertificateKeyFile /etc/apache2/certificate/apache.key
</VirtualHost>
```
Reinicie el servicio Apache.

```
service apache2 restart
```
