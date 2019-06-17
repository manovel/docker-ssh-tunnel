FROM alpine:latest

RUN apk add --update --no-cache openssh-client

CMD ssh $CONFIG_HOST && while true; do sleep 30; done;
EXPOSE 1-65535