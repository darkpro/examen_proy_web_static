# Imagen base
FROM nginx:alpine

# Copiar contenido web al directorio del servidor
COPY src/ /usr/share/nginx/html/

# Exponer el puerto 80
EXPOSE 80

# Comando por defecto
CMD ["nginx", "-g", "daemon off;"]
