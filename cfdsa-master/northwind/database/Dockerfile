FROM mysql:5.7

# set mysql root password to "changeit"
ENV MYSQL_ROOT_PASSWORD=changeit

# Write one or more docker command to copy *.sql files to docker-entrypoint-initdb.d
ADD 0-northwind-default-current-timestamp.sql /docker-entrypoint-initdb.d
ADD 1-northwind-data.sql /docker-entrypoint-initdb.d

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
	CMD mysqladmin ping -uroot -pchangeit || exit 1

