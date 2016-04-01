FROM ubuntu

WORKDIR /app
RUN apt-get install -y curl unzip
RUN cd /tmp && \
    curl -Ls https://install.convox.com/linux.zip > convox.zip && \
    unzip convox.zip && \
    cp convox /usr/local/bin/convox && \
    rm convox.zip

ENTRYPOINT ["/usr/local/bin/convox"]
