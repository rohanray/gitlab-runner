FROM gitlab/gitlab-runner:alpine
MAINTAINER    Rohan Ray (https://github.com/rohanray) [rohanray@outlook.com]

RUN apk add --update \
                lxc \
                lxc-templates \
                bridge\
                py-pip

RUN pip install docker-compose

RUN ls -la /usr/local/bin
RUN ls -la /usr/bin/docker-compose && chmod +x /usr/bin/docker-compose

COPY init.sh /
RUN chmod +x /init.sh

#CMD ["/bin/bash/"]
ENTRYPOINT ["/register-and-run.sh"]
