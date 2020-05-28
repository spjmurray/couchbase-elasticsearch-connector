FROM ubuntu:bionic

ARG VERSION

RUN apt-get update \
  && apt-get -y install \
    wget \
    unzip \
    default-jre-headless \
  && apt-get clean \
  && wget -q https://packages.couchbase.com/clients/connectors/elasticsearch/$VERSION/couchbase-elasticsearch-connector-$VERSION.zip \
  && unzip -n couchbase-elasticsearch-connector-$VERSION.zip \
  && mv couchbase-elasticsearch-connector-$VERSION couchbase-elasticsearch-connector

ENTRYPOINT ["/couchbase-elasticsearch-connector/bin/cbes"]
