FROM alpine

LABEL "repository"="http://github.com/Melostat/git-sync"
LABEL "homepage"="http://github.com/Melostat/git-sync"
LABEL "maintainer"="Wei He"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
