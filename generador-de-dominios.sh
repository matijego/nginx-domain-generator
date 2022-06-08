#!/bin/bash

#Ingresa el subdominio y la ip con su puerto
echo "Ingresa el nombre del subdominio que desees agregar: "
read DOMINIO

echo "Ingresa la ip local y puerto al cual desees redirigir el dominio: "
read IP

#Copia el archivo ejemplo en la carpeta de sitios disponibles de nginx
cp example.com /etc/nginx/sites-available/$DOMINIO

#Inserta el subdominio e ip al archivo de configuración
sed -i s/EXAMPLE-DOMAIN/$DOMINIO/g /etc/nginx/sites-available/$DOMINIO
sed -i s/EXAMPLE-IP/$IP/g /etc/nginx/sites-available/$DOMINIO

#Crea una referencia en la carpeta de sitios activados en nginx
ln -s /etc/nginx/sites-available/$DOMINIO /etc/nginx/sites-enabled

#Instala el certificado SSL con certbot
sudo certbot --nginx -d $DOMINIO

#Reinicia nginx para que se apliquen los cambios
systemctl restart nginx.service


