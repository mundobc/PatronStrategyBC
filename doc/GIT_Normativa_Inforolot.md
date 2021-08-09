# Normativa Inforolot para el uso de GIT como sistema de control de código fuente

## 1. CREACION DE PROYECTOS Y REPOSITORIOS

1. Se considera un proyecto oficial:
   1. Cualquier proyecto con funcionalidad para clientes
   2. Proyectos internos de uso extendido entre los técnicos
2. Los proyectos "Oficiales" de la empresa se deberán crear en
Repositorio oficial INFOROLOT en Azure DevOps:
[https://dev.azure.com/INFOROLOT/](https://dev.azure.com/INFOROLOT/)

3. Los proyectos \"oficiales\" deben estar SIEMPRE subidos al repositorio remoto, aunque solo trabaje en el proyecto un solo técnico

4. Los proyectos de pruebas o de formación:
    1. Se pueden gestionar localmente sin necesidad de usar GIT
    2. Se recomienda subir a un repositorio privado del técnico
            gestionado por él mismo.

5. Cada cliente dispondrá de un proyecto en la empresa Devops
        INFOROLOT
    1. Las distintas aplicaciones autónomas de un cliente se crearán como nuevos repositorios en el proyecto del cliente
    2. Distintas aplicaciones relacionadas (Extensiones AL que funcionen conjuntamente) podrán compartir un mismo repositorio en el proyecto del cliente
6. Cada vertical dispondrá de un proyecto en el repositorio INFOROLOT
        (Ej.: IOGC)
    1. ~~Cada versión del vertical dispondrá de un repositorio dentro
            del proyecto del vertical (Repositorio IOGC2017, IOGC2018,
            IOGCBC14, ...) ~~
    2. Cada instalación de cliente del vertical será una Rama del
            repositorio de la versión estándar del vertical Original.

7. ~~Cada módulo ESTANDAR dispondrá de un proyecto en el repositorio
        INFOROLOT (Terminar pedido, Control de riesgos, ...) ~~
    1. ~~Cada versión del módulo estándar dispondrá de un repositorio
            dentro del proyecto del módulo ~~
8. Los proyectos y repositorios se deberán crear sin espacios en blanco
    1. Se sustituirán los espacios en blanco por *underscores* ( \_ )
    2. Los nombres de proyecto harán referencia al cliente vertical o modulo estándar que contengan
    3. Los nombres de repositorio informaran de forma clara el contenido del repositorio

## 2. COMMITS

1. Se deben realizar commits del código regularmente
2. Absolutamente nunca se debe hacer commit en la master de código
        con errores
3. Es aconsejable usar un workflow de trabajo que no permita
        commits en master
4. Es aconsejable que un commit sea de una funcionalidad /
        modificación concreta con modificaciones relacionadas
        conceptualmente
5. Si a la hora de hacer commit se disponen de varias
        modificaciones no relacionadas, se aconseja realizar un "stage"
        de los ficheros relacionados y hacer varios commits.
6. El mensaje del commit debe ser descriptivo

    **SI**: "Amplia ObtenerPrecio para considerar promociones"  
    **NO**: "Modificaciones varias REQ03"

7. Se recomienda limitar la primera línea de commit (Asunto) a 50 caracteres

    **SI**: "Amplia ObtenerPrecio para considerar promociones"  
    **NO**: "Se modifica la función Obtener precio para poder tener
            en cuenta que..."
8. La línea de asunto no acaba con punto
9. Si se desea escribir más información en el commit se debe dejar una línea en blanco entre la línea de asunto y el cuerpo.  

    **SI**:
    "Amplia ObtenerPrecio para considerar promociones"
  
    La función obtener precio queda ligada con el módulo de promociones
    Via parámetros para poder tener en cuenta descuentos especiales que
    Provienen de dicho modulo.  

    **NO**:

    "Amplia ObtenerPrecio para considerar promociones"\
    La función obtener precio queda ligada con el módulo de promociones
    Via parámetros para poder tener en cuenta descuentos especiales que
    Provienen de dicho modulo.

10. El cuerpo debe tener un salto de línea cada 72 caracteres como
    máximo

## 3. Fetch / pull / push

1. Es muy aconsejable usar un workflow de trabajo que no permita Push directos en master
2. Realizar un pull antes de modificar fichero en local para obtener la última versión
3. Realizar pull --rebase para evitar conflictos de merge con la copia local.
4. Durante el periodo de trabajo, comprobar periódicamente que no existen cambios en el repositorio remoto.
    1. Si trabajamos con visual studio code activar el fecth automático
    2. Si existen cambios, se recomienda realizar el pull y solucionar, si existen, los conflictos antes de seguir trabajando.

## 4. Ramas

1. Se aconseja seguir un workflow de trabajo que cree una rama por funcionalidad
2. Las ramas de funcionalidad deben durar solo mientras se desarrolla la funcionalidad. Una vez hecho el merge en la master la rama se debe eliminar
3. Las ramas locales para realizar pruebas de código no deben subirse al repositorio remoto

## 5. Pull Requests

1. Se aconseja el uso de Pull Request para hacer merge de código en la master
2. Se aconseja la validación obligatoria del pull request por el responsable o por otro técnico distinto al que ha implementado la funcionalidad
3. Se aconseja realizar un merge squash al completar un Pull request en la master

## 6. Workflows de trabajo

1. Workflow básico
    1. Workflow no recomendado
    2. Solo se debería usar este Workflow para funcionalidades muy básias
    3. No saca provecho del potencial de GIT
    4. Se programa siempre sobre la rama master
    5. Se realizan push de código directamente en Master
    6. No hay control sobre el estado funcional de la master
2. Workflow Rama - Funcionalidad
    1. Workflow de trabajo GIT recomendado
    2. Cada funcionalidad se desarrolla en una rama dedicada a dicha funcionalidad
    3. Cuando se termina el desarrollo de la funcionalidad se crea un Pull Request de la rama sobre Master.
    4. Una vez completado el Pull Request se borra la rama de la funcionalidad.
    5. Si se necesita modificar la funcionalidad, se vuelve a crear la Rama de la versión actualizada de la Master y se repite el proceso
