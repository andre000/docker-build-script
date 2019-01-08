FROM mongo
LABEL maintainer="andre@dev-next.com"
ENV MONGO_INITDB_ROOT_USERNAME root
ENV MONGO_INITDB_ROOT_PASSWORD root
ENV MONGO_INITDB_DATABASE test
VOLUME ../.data/mongo /data/db 
