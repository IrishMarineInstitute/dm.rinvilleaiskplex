FROM alpine
RUN apk add build-base
RUN wget http://www.stripydog.com/download/kplex-1.3.4.tgz
RUN gunzip kplex-1.3.4.tgz && tar xvf kplex-1.3.4.tar
RUN cd kplex-1.3.4 && make && make install
RUN rm -rf kplex-1.3.4
COPY kplex.conf /kplex.conf
EXPOSE 2101
CMD ["/usr/bin/kplex", "-f", "/kplex.conf"]
