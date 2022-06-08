# Como usar el generador de subdominios con nginx 🌐

En esta documentación se detallará como utilizar el script generador-dominios.sh que sirve para automatizar las configuraciones previas para enlazar un subdominio a través 



### Pre-requisitos 📋

_Para poder utilizar el script es necesario tener instalado el gestor de proxy inverso NGINX y el certificador de SSL automático Certbot._


_Instalación de NGINX:_

```
sudo apt install nginx
```


_Instalación de Certbot:_

```
sudo snap install --classic certbot
```

_IMPORTANTE: Se debe haber creado el subdominio en su servidor de DNS antes de ejecutar el script sino NO funcionará._


### Como se usa 🖥

_Se deberá ejecutar la siguiente instrucción en la misma ubicación donde se encuentre el archivo generador-de-dominios.sh_



```
sudo sh generador-de-dominios.sh
```

_Ahora tendrá que ingresar el subdominio que haya creado en su servidor de DNS._

```
subdominio.ejemplo.com
```

_Como último paso deberá ingresar la ip local y puerto correspondiente del servicio que quiera exponer a través del subdominio._


```
192.168.0.100:3000
```

_Cargado estos datos de manera correcta se procederá a crear los archivos de configuración en NGINX y la instalación del certificado SSL con certbot_



## Autor ✒️


* **Matias Gonzalez** - desarrollo de script y documentación - [matijego](https://github.com/matijego)




---
