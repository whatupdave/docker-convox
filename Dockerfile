FROM alpine:3.3
WORKDIR /app
RUN apk -U add curl unzip
RUN curl -Ls https://install.convox.com/linux.zip > /tmp/convox.zip && \
    unzip /tmp/convox.zip && \
    rm /tmp/convox.zip
CMD convox
