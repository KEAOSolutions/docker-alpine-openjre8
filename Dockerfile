# OpenJRE8 build on Docker Alpine
FROM ukhomeoffice/gosu:latest

ENV LANG en_GB.utf8

RUN apk add --update openjdk8-jre-base
RUN rm -rf /var/cache/apk/*

ENV JAVA_HOME /usr/bin/java

ENTRYPOINT ["sh"]
