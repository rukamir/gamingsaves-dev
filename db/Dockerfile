FROM mariadb:latest

ENV MYSQL_ROOT_PASSWORD password

# docker-entrypoint-initdb.d
COPY ./sql_scripts /docker-entrypoint-initdb.d
COPY ./config /etc/mysql/conf.d

EXPOSE 3306