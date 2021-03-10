FROM node:latest

RUN apt-get update && \
    apt-get -y install \
        git \
        rsync \
    --no-install-recommends && \
    apt-get clean

RUN mkdir /superalgos && \
    mkdir /superalgos-install && \
    cd /superalgos-install && \
    git clone --depth 1 https://github.com/Superalgos/Superalgos.git .

COPY root/ /
COPY entry.sh /entry
RUN chmod +x /entry

WORKDIR '/superalgos'
CMD ["/entry"]

#Http Interface
EXPOSE 34248

#Websockets
EXPOSE 18041