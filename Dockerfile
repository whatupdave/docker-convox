FROM ubuntu

WORKDIR /app
RUN apt-get install -y curl unzip
RUN curl -Ls https://install.convox.com/linux.zip > /tmp/convox.zip && \
    unzip /tmp/convox.zip && \
    rm /tmp/convox.zip

ENTRYPOINT ["./convox"]
