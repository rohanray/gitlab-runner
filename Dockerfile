FROM gitlab/gitlab-runner:alpine
MAINTAINER    Rohan Ray (https://github.com/rohanray) [rohanray@outlook.com]

RUN apk add --update \
                bash \
                ca-certificates \
                git \
                openssl \
                wget

COPY init.sh /
RUN chmod +x /init.sh

#ENTRYPOINT ["/register-and-run.sh"]
