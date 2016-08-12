FROM centos:7

RUN yum -y update && yum -y install \
    unzip

RUN curl -o nfldb.sql.zip http://burntsushi.net/stuff/nfldb/nfldb.sql.zip \
    && unzip nfldb.sql.zip

CMD tail -f /dev/null
