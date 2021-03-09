FROM alpine:latest
ENV mydir /var/www/localhost/htdocs
ARG myname=yuanyuan
WORKDIR ${mydir}
RUN apk --update add apache2
RUN rm -rf /var/cache/apk/*
RUN echo "<h3>I'm ${myname}.I am taking this grate Docker Course.Round1<h3>" >> index.html
RUN echo "<h3>I'm ${myname}.I am taking this grate Docker Course.Round2<h3>" >> index.html
RUN echo "<h3>I'm ${myname}.I am taking this grate Docker Course.Round3<h3>" >> index.html
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]