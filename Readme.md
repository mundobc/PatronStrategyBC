# Plantilla Inforolot para Extensión AL

Este proyecto contiene la plantilla inicial con la cual empezar una extensión AL para Microsoft Dynamics 365 BC

Para ver las pautas de programación AL para Inforolot revisar el documento [AL Normativa Inforolot](doc/AL_Normativa_Inforolot.md)

Para ver las pautas de trabajo en GIT para Inforolot revisar el documento [GIT Normativa Inforolot](doc/GIT_Normativa_Inforolot.md)

## Contenido

En este proyecto encontraras un ejemplo de los distintos tipios de objetos AL

### Ficheros Raíz

#### app.json
El fichero app.json es la configuración de la extensión.
Visita [este enlaze](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-json-files#Appjson) para mas información sobre el fichero **app.json**

### Readme.md
Información sobre la extenión. Este fichero debe contener información de la aplicación sobre algunos de los siguientes puntos:
* Descripción de la app
* Instalación de la app
* Uso básico de la app
* Imagenes de la app
* Extensiones de las cuales depende la app

### Carpeta .vscode
Carpeta interna para el correcto funcionamiento de vsCode con AL

#### launch.json
Ficher con la configuración para debugar y realizar pruebas de la aplicación.
e debe configurar el servidor y el puerto en el que se va a probar. 
Visita [este enlaze](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-json-files#Launchjson) Para má información sobre el figchero **launch.json**

#### rad.json
Fichero de seguimiento de modificaciones para permitir una compilación incremental y mejorar el rendimiento de trabajo con al.
No se debe eliminar ni modificar manualmente.
Visita [este enlace](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-rad-publishing) para más información sobre el fichero **rad.json**

#### settings.json
Fichero de configuración del espacio de trabajo vscode.

### Carpeta doc
Carpeta para documentación extra de la aplicación.
Si se trata de una aplicación simple esta carpeta puede ser eliminada y no usar-se. 
En aplicaciones de mayor embergadura, el fichero **Readme** debe contener información de cabecera sobre distintos procesos de la app que enlazan con documentos detallados que se encuentran en la carpeta *doc* de documentación.

### Carpeta res
Contiene archivos de recursos a utilizar en distintos ficheros de la aplicación como por ejemplo imagenes, pdfs, etc..

### Carpeta src
Contiene el código fuente de la aplicación.
Es el corazón de la app en la qual se progaaman las distintas funcionalidades.
La carpeta src puede contener distintas subcarpetas para ordenar funcionalmente los distintos ficheros **.al** que  forman parte de la extensión.
