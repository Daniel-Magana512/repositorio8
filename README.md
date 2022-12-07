# Práctica 8 Balanceador de carga con Apache

*En esta práctica partimos de la configuración que hemos realizado en la práctica 7.*

**Recordar** *recordar que creamos dos maquinas:*
* **Una para el front-end**
* **Otra para el back-end**

En esta práctica vamos a tener dos front-end y un back-end, además le añadiremos el balanceador ( es un dispositivo hardware o software que se pone al frente de un conjunto de servidores y se encarga de asignar o balancear las peticiones que llegan de los clientes hacia los servidores).

De manera que **cuando nos conectemos al balanceador nada más que con darle al F5, nos llevará a otro front-end, de manera que con esta herramienta podremos acceder a todos los front-end.**

La estructura que queremos obtener será la siguiente:

![](./fotos/foto_1.PNG)

## **Explicación previa**

En el inventario quedaría así;

![](./fotos/foto_2.PNG)

Tendría 3 grupos:

* **Front-end**
* **Back-end**
* **balanceador**

Esto se debe a que los achivos de extensión **.yml** no a todos vamos a aplicarle la misma configuración por eso los ponemos por separado.

Ahora vamos al archivo de **variables.yml**

![](./fotos/foto_3.PNG)

* **Ponemos las dos IPs publicas de las máquinas de front-end (lo suyo es que sean ip elásticas, esto se debe a que si esas IPs cambián cuando cerramos las máquinas el balanceador no funcionará, debido a que esas ip han cambiado).**

* **El siguiente paso es crear un dominio y un correo para que cuando accedamos al balanceador, sea a través del puerto 443, se debe al certificado**


## **Archivo de configuración**

Creamos un archivo que será el 000-default.conf

![](./fotos/foto_4.PNG)

**Pondremos las variables definidas en el archivo llamado variables.yml, en esas variables van las IPs de los front-end, donde le estemos diciendo las URL para llegar a los front-end**

**Luego este archivo irá al directorio del balanceador /etc/apache2/sites-available/**

