FROM stevearc/pypicloud:1.0.2

MAINTAINER eytan@automatic.com

### Install confd
ENV CONFD_VERSION=0.15.0
# ADD https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 /usr/local/bin/confd
RUN curl -L https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 --output /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd

COPY cfd.sh /etc/my_init.d/cfd.sh
RUN chmod +x /etc/my_init.d/cfd.sh

### Install conf templates
RUN mkdir -p /etc/confd/conf.d /etc/confd/templates
COPY config.ini.tmpl /etc/confd/templates/config.ini.tmpl
COPY config.ini.toml /etc/confd/conf.d/config.ini.toml

