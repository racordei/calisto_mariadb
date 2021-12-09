FROM mariadb:latest

COPY ./config/proxy.conf /etc/apt/apt.conf.d/proxy.conf

RUN apt update
RUN apt install nano
# RUN apt install -y nodejs

# COPY ./config/init.sql /script/init.sql
COPY ./config/startup.sh /docker-entrypoint-initdb.d/startup.sh

EXPOSE ${MARIADB_EXPOSE_PORT}