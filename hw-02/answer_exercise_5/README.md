## Diseña una estrategia de despliegue que se base en ”Blue Green”. Podéis utilizar la imagen del ejercicio 1.

Imaginemos dos deployments:

- Deployment blue(v1, nginx:1.19.2-alpine) actualmente en producción junto con su servicio.

- Deployment green(v2, nginx:1.19.4-alpine) en la cual se hará pruebas.

<img alt="" src="./image31.png" style="width: 601.70px; height: 256.00px;" title="">

Se acabó la validación y se ordena cambiar el tráfico de la versión 1 a 2 , lo hacemos cambiando el selector del servicio corriendo en producción con el comando:

```jsx
kubectl patch service service-blue-green -p '{"spec":{"selector":{"version":"2"}}}'
```

<img alt="" src="./image4.png" style="width: 601.70px; height: 33.33px; " title="">

Realizando un bucle de curls podemos observar como cambia el tráfico en el header Server de la img de ngnix:
<img alt="" src="./image14.png" style="width: 380.50px; height: 108.08px; " title="">
<img alt="" src="./image19.png" style="width: 412.50px; height: 192.55px;" title="">

Una vez asegurado que todo bien podemos eliminar el deployment blue :
<img alt="" src="./image16.png" style="width: 493.03px; height: 35.22px; " title="">
