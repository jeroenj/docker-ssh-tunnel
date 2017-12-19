FROM alpine:3.6

ENV SSH_AUTH_SOCK /ssh-agent

RUN apk add --update --no-cache autossh

# TODO: use user

VOLUME "/root/.ssh"

ENTRYPOINT ["/usr/bin/autossh", "-M", "0", "-oServerAliveInterval=30", "-oServerAliveCountMax=3", "-T", "-N", "-oStrictHostKeyChecking=no", "-oUserKnownHostsFile=/dev/null", "-L"]
