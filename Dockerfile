FROM alpine

LABEL maintainer "Joe Eaves <joe.eaves@shadowacre.ltd>"

RUN apk add --update git make asciidoc python python-dev xmlto &&\
	git clone https://gitlab.com/esr/irker.git

RUN cd irker && make && make install

ENTRYPOINT ["/usr/bin/irkerd"]
