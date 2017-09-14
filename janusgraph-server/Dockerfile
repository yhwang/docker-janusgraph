FROM janusgraph

WORKDIR /home/janusgraph/janusgraph

RUN set -x \
  && sed -E -i.bak 's/storage\.hostname=.*$/storage\.hostname=cassandra-server/' conf/gremlin-server/janusgraph-cassandra-es-server.properties \
  && sed -E -i.bak 's/index\.search\.hostname=.*$/index\.search\.hostname=es-server/' conf/gremlin-server/janusgraph-cassandra-es-server.properties \
  && sed -E -i.bak 's/storage\.backend=.*$/storage\.backend=cql/' conf/gremlin-server/janusgraph-cassandra-es-server.properties \
  && sed -E -i.bak 's/channel\.WebSocketChannelizer/channel\.HttpChannelizer/' conf/gremlin-server/gremlin-server.yaml \
  && rm conf/gremlin-server/gremlin-server.yaml.bak

EXPOSE 8182

VOLUME /home/janusgraph/janusgraph/conf/gremlin-server

VOLUME /home/janusgraph/janusgraph/scripts

CMD [ "/home/janusgraph/janusgraph/bin/gremlin-server.sh" ]
