## Crea un objeto de tipo service para exponer la aplicación del ejercicio anterior de las siguientes formas:

### Exponiendo el servicio hacia el exterior (crea service1.yaml)

```jsx
kubectl apply -f service1.yaml
```

<img alt="" src="./image28.png" style="width: 601.70px; height: 146.67px; " title="">

Ingresamos con el puerto dinámico que se nos asignó: 32200

<img alt="" src="./image11.png" style="width: 601.70px; height: 206.67px; " title="">

### De forma interna, sin acceso desde el exterior (crea service2.yaml)

```jsx
kubectl apply -f service2.yaml
```

<img alt="" src="./image13.png" style="width: 601.70px; height: 84.00px; " title="">

Para comprobar he creado un pod(nginx-hit ) por separado para golpear a ese servicio mediante un curl hacia nginx-service-2:8080 y vemos que devuelve el html.

<img alt="" src="./image15.png" style="width: 601.70px; height: 362.67px; " title="">

### Abriendo un puerto específico de la VM (crea service3.yaml)

<img alt="" src="./image29.png" style="width: 601.70px; height: 134.67px; " title="">

Si accedemos con la ip del minikube y el puerto fijo que asignamos en la vm, obtenemos el html:

<img alt="" src="./image17.png" style="width: 601.70px; height: 182.67px; " title="">
