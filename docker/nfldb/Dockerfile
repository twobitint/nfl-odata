FROM centos:7

RUN yum -y update && yum -y install \
    unzip \
    postgresql-server \
    postgresql-devel

RUN curl -o nfldb.sql.zip http://burntsushi.net/stuff/nfldb/nfldb.sql.zip \
    && unzip nfldb.sql.zip \
    && PGPASSWORD=nfldb psql -h db -U nfldb < nfldb.sql

RUN curl -o get-pip.py https://bootstrap.pypa.io/get-pip.py \
    && python get-pip.py \
    && pip2 install nfldb \
    && cp /usr/share/nfldb/config.ini.sample /usr/share/nfldb/config.ini \
    && sed -ie 's/YOUR PASSWORD/nfldb/g' /usr/share/nfldb/config.ini \
    && sed -ie 's/localhost/db/g' /usr/share/nfldb/config.ini \
    && nfldb-update

CMD tail -f /dev/null
