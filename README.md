# Proyecto: Despliegue de una Aplicación Web Estática con Contenedores

## Descripción
Este proyecto implementa una **página web estática** dentro de un contenedor Docker,  el contenedor se despliega y orquesta en **Kubernetes (Minikube)** mediante un **Deployment con 2 réplicas** y un **Service tipo NodePort (puerto 30555)**.

---

## Estructura del proyecto
proyecto_web/

├── src/

│ └── index.html

├── Dockerfile

├── deployment.yaml

└── README.md


---

## Tecnologías utilizadas
- **Docker** → Construcción y ejecución del contenedor.  
- **Kubernetes / Minikube** → Orquestación y despliegue.  
- **Nginx (Alpine)** → Servidor web ligero.  
- **GNU/Linux (Mint / Ubuntu)** → Entorno base de desarrollo.  

---

## Pasos de despliegue

### Construcción de la imagen
```bash
docker build -t sitio_k8s:latest .
docker run -d -p 8080:80 sitio_k8s
```

Abrir en el navegador: http://localhost:8080

### Despliegue en Kubernetes
minikube start


minikube image load sitio_k8s:latest


kubectl apply -f deployment.yaml


kubectl get pods


kubectl get svc

### Acceso al servicio

minikube service sitio-service

O en el navegador:
http://<IP_MINIKUBE>:30555