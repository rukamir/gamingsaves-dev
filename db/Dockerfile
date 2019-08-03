FROM mariadb:latest

ENV MYSQL_ROOT_PASSWORD password

#docker-entrypoint-initdb.d
COPY ./game_schema.sql /docker-entrypoint-initdb.d
COPY ./db_init.sh /docker-entrypoint.sh

# #CMD "ls"

EXPOSE 3306