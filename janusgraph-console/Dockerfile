FROM janusgraph

WORKDIR /home/janusgraph/janusgraph

RUN set -x && mkdir files

VOLUME /home/janusgraph/janusgraph/files

CMD [ "/home/janusgraph/janusgraph/bin/gremlin.sh" ]
