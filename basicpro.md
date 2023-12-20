# Configuración básica de Apache para producción

### Paso 1: Abrir el Fichero de Configuración de Apache

Usa tu editor de texto favorito para abrir el archivo de configuración principal de Apache

```
sudo nano /etc/apache2/apache2.conf
```

### Paso 2: Configuración ServerTokens

La directiva ServerTokens controla qué información sobre el servidor Apache se incluirá en la respuesta del servidor y en los registros de error.

La opción Prod se utiliza para que Apache solo muestre la información mínima en las respuestas HTTP y en los registros de error. En entornos de producción, esto es beneficioso para reducir la exposición de información sensible sobre la configuración de Apache

Agrega la siguiente línea al archivo:

```
ServerTokens Prod
```

### Paso 3: Configuración MaxKeepAliveRequests

La directiva MaxKeepAliveRequests establece el número máximo de solicitudes que se permiten en una conexión Keep-Alive persistente. Una conexión Keep-Alive permite que el mismo cliente realice múltiples solicitudes a través de la misma conexión TCP, lo que puede mejorar el rendimiento.

En entornos de producción, se recomienda limitar el número máximo de solicitudes para evitar que una conexión persistente se utilice indefinidamente, lo que podría afectar negativamente el rendimiento del servidor.

Agrega la siguiente línea al archivo:

```
MaxKeepAliveRequests 500
```
### Paso 4: Configuración TimeOut

La directiva TimeOut establece el tiempo máximo que el servidor esperará por ciertas operaciones antes de que expire la solicitud.

En entornos de producción, se puede aumentar el tiempo de espera para manejar posibles períodos de carga elevada o conexiones lentas.

Agrega la siguiente línea al archivo:

```
TimeOut 300
```
### Paso 5: Configuración LogLevel

La directiva LogLevel establece el nivel de verbosidad de los registros de Apache. La opción crit establece que solo se registrarán mensajes críticos, que son los mensajes más importantes.

Agrega la siguiente línea al archivo:

```
LogLevel crit
```
![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/e99fbc45-59fb-4b89-918d-3b749766d086)

### Paso 6: Guardar y Cerrar el Archivo

Guarda los cambios y cierra el archivo.

### Paso 7: Reiniciar Apache

Después de realizar cambios en la configuración de Apache, es necesario reiniciar el servicio para que los cambios surtan efecto:

```
sudo service apache2 restart
```

Antes:

Ahora:

![image](https://github.com/Scosrom/Implantacion_web/assets/114906778/861a0e01-3f37-4913-a5b3-eac5c927cb74)








