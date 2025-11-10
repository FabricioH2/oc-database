# Imagen base oficial de MongoDB
FROM mongo:6.0

# Directorio de inicialización de MongoDB
# Los scripts en esta carpeta se ejecutan automáticamente al iniciar el contenedor
# si el volumen /data/db está vacío.
COPY ./init /docker-entrypoint-initdb.d/

# Configurar permisos para OpenShift (usuario no-root)
# MongoDB necesita permisos de escritura en /data/db
#RUN chown -R mongodb:mongodb /data/db && \
#    chmod -R 755 /data/db && \
#    chown -R mongodb:mongodb /var/log/mongodb && \
#    chmod -R 755 /var/log/mongodb
#
# (Opcional) Variables de entorno
#ENV MONGO_INITDB_ROOT_USERNAME=admin
#ENV MONGO_INITDB_ROOT_PASSWORD=admin123
#ENV MONGO_INITDB_DATABASE=comments_db

# Exponer puerto por defecto de Mongo
EXPOSE 27017

# MongoDB ya tiene un entrypoint que lanza el servicio automáticamente
# Nota: MongoDB corre como usuario 'mongodb' (UID 999) que es compatible con OpenShift
