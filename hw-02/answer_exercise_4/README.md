## Crear un objeto de tipo deployment con las especificaciones del ejercicio 1.

### Despliega una nueva versión de tu nuevo servicio mediante la técnica “recreate”

<img alt="" src="./image30.png" style="width: 215.50px; height: 197.24px; " title="">

<img alt="" src="./image10.png" style="width: 515.75px; height: 133.65px; " title="">

### Despliega una nueva versión haciendo “rollout deployment”

Modificamos directamente el archivo la imagen de nginx:1.19.2-alpine hacia nginx:1.19.4-alpine y volvemos a lanzar el deployment :

<img alt="" src="./image20.png" style="width: 601.70px; height: 98.67px; " title="">

Hacemos un describe y observamos que estamos en la versión nginx:1.19.4-alpine

<img alt="" src="./image18.png" style="width: 264.50px; height: 223.67px; " title="">

### Realiza un rollback a la versión generada previamente (revision 1)

<img alt="" src="./image3.png" style="width: 601.70px; height: 118.67px; " title="">

Estamos de nuevo en la imagen nginx:1.19.2-alpine

<img alt="" src="./image1.png" style="width: 474.27px; height: 183.01px; " title="">
