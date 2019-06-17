FROM alpine:latest

RUN apk add --update --no-cache openssh-client

CMD rm -rf /root/.ssh && mkdir /root/.ssh && cp -R /root/ssh/* /root/.ssh/ && chmod -R 600 /root/.ssh/* && \
ssh -o StrictHostKeyChecking=no \
$CONFIG_HOST \
&& while true; do sleep 30; done;
EXPOSE 1-65535