FROM fedora
MAINTAINER Lars Kellogg-Stedman <lars@oddbit.com>

RUN yum -y install \
	https://piotrp.fedorapeople.org/graphite/python-carbon-0.9.13-0.1.pre1.fc21.noarch.rpm \
	https://piotrp.fedorapeople.org/graphite/python-whisper-0.9.13-0.1.pre1.fc21.noarch.rpm \
	; yum clean all
RUN true
VOLUME /var/lib/carbon

RUN mkdir -p /entrypoint.d
COPY entrypoint.sh /entrypoint.sh
COPY init-carbon-storage.sh /entrypoint.d/init-carbon-storage.sh

ENTRYPOINT ["/entrypoint.sh"]

