## Crear un objeto de tipo replicaSet a partir del objeto anterior con las siguientes especificaciones:

### Debe tener 3 replicas

<img alt="" src="./image12.png" style="width: 281.50px; height: 347.83px; " title="">

<img alt="" src="./image21.png" style="width: 601.70px; height: 162.67px; " title="">

<img alt="" src="./image6.png" style="width: 440.50px; height: 73.90px;" title="">

## ¿Cúal sería el comando que utilizarías para escalar el número de replicas a 10?

```jsx
kubectl scale --replicas=10 rs nginx
```

<img alt="" src="./image24.png" style="width: 601.70px; height: 265.33px; " title="">

## Si necesito tener una replica en cada uno de los nodos de Kubernetes, ¿qué objeto se adaptaría mejor?

El objeto DaemonSet ya que garantiza que todos los nodos del clúster ejecuten una copia del pod.
