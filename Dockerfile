FROM postgres:11

RUN apt update && apt -y install postgresql-contrib-9.5
COPY init.sh /docker-entrypoint-initdb.d/
