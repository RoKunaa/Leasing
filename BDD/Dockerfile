FROM mysql:9.3.0

# Copiar los archivos de inicialización
COPY init.sql /docker-entrypoint-initdb.d/
COPY bdd2024.csv /docker-entrypoint-initdb.d/

# Habilitar la opción de local-infile
CMD ["mysqld", "--local-infile=1"]
