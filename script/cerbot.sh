#!/bin/bash
set -x
#Vamos a generar el certificado para que utilize el protocolo https
#-----------------------------------------------------------------------
# Realizamos la instalación y actualización de snapd.
snap install core; sudo snap refresh core

#Eliminamos si existiese alguna instalación previa de certbot con apt.
apt-get remove certbot

# Instalamos el cliente de Certbot con snapd.
snap install --classic certbot

# Creamos una alias para el comando certbot.
ln -s /snap/bin/certbot /usr/bin/certbot

#Obtenemos el certificado y configuramos el servidor web Apache.
certbot --apache -m $PS_EMAIL --agree-tos --no-eff-email -d $DOMAIN