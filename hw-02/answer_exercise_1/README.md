## Crea un pod de forma declarativa con las siguientes especificaciones:

- Imagen: nginx
- Version: 1.19.4
- Label: app: nginx-server
- Limits: CPU: 100 milicores, Memoria: 256Mi
- Requests: CPU: 100 milicores, Memoria: 256Mi

### ¿Cómo puedo obtener las últimas 10 líneas de la salida estándar (logs generados por la aplicación)?

```jsx
kubectl logs -f --tail 10 nginx
```

<img alt="" src="./image27.png" style="width: 601.70px; height: 100.00px;" title="">

### ¿Cómo podría obtener la IP interna del pod? Aporta capturas para indicar el proceso que seguirías.

De dos formas:

```jsx
kubectl get pod nginx --template={{.status.podIP}}
```

<img alt="" src="./image2.png" style="width: 601.70px; height: 41.33px;" title="">

```jsx
kubectl get pod nginx -o wide
```

<img alt="" src="./image5.png" style="width: 601.70px; height: 42.67px;" title="">

### ¿Qué comando utilizarías para entrar dentro del pod?

```jsx
kubectl exec -it nginx sh
```

<img alt="" src="./image25.png" style="width: 601.70px; height: 125.33px;" title="">

### Necesitas visualizar el contenido que expone NGINX, ¿qué acciones debes llevar a cabo?

Hay dos formas:

- Realizando un port forwarding , el primer puerto es nuestro local y el segundo es el puerto que el pod está escuchando.

```jsx
kubectl port-forward nginx 8080:80
```

<img alt="" src="./image23.png" style="width: 601.70px; height: 80.00px;" title="">

<img alt="" src="./image22.png" style="width: 601.70px; height: 174.67px; " title="">

- Accediendo directamente al contenedor y ver el index.html por defecto mediante un cat index.html.

<img alt="" src="./image26.png" style="width: 601.70px; height: 326.67px;" title="">

### Indica la calidad de servicio (QoS) establecida en el pod que acabas de crear. ¿Qué lo has mirado?

El QoS es Guaranteed ya que los resources limit y requests son iguales.

<img alt="" src="./image8.png" style="width: 157.50px; height: 122.50px;" title="">

Revisando el describe podemos encontrarlo igualmente al final.

```jsx
kubectl describe pod nginx
```

<img alt="" src="./image7.png" style="width: 311.50px; height: 198.23px; " title="">
