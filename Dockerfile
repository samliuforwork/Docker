FROM alpine:latest
ENV mydir /var/www/localhost/htdocs
ARG whoami=Sam
WORKDIR ${mydir}
RUN apk --update add apache2
RUN rm -rf /var/cache/apk/*
RUN echo "<h3>Hi, I'm ${whoami}.XD</h3>" >> index.html
RUN echo "<h3>Hi, I'm ${whoami}.XD</h3>" >> index.html
RUN echo "<h3>Hi, I'm ${whoami}.XD</h3>" >> index.html
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]