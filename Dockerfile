FROM node:latest

RUN apt-get update && \
    apt-get -y install \
        git \
    --no-install-recommends && \
    apt-get clean

RUN mkdir /superalgos

COPY root/ /
COPY entry.sh /entry
RUN chmod +x /entry

WORKDIR '/superalgos'
CMD ["/entry"]

# Http Interface
EXPOSE 34248
# Websockets
EXPOSE 18041