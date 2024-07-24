FROM mariadb

LABEL MAINTAINER="Justin Bradley <justin@soton.ac.uk>"

ENV MYSQL_DATABASE=pub \
    MYSQL_USER=pub \
    MYSQL_PASSWORD=wilder-landscape-chrome \
    MYSQL_ROOT_PASSWORD=tameness-peddling-humped

ADD https://files.eprints.org/2411/1/eprints_pub.sql /docker-entrypoint-initdb.d/pub.sql
RUN chmod a+r /docker-entrypoint-initdb.d/pub.sql

EXPOSE 3306
