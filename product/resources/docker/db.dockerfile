FROM postgres:10.3

COPY ./resources/docker/up.sql /docker-entrypoint-initdb.d/

CMD ["postgres"]

