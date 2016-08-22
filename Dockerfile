FROM gitlab/gitlab-runner:alpine
MAINTAINER    Rohan Ray (https://github.com/rohanray) [rohanray@outlook.com]

RUN apk add --update \
                bash \
                ca-certificates \
                git \
                openssl \
                wget

ADD ./register-and-run.sh /
RUN chmod +x ./register-and-run.sh

#ENTRYPOINT ["/register-and-run.sh"]
