FROM maven:3.5.4-jdk-8-alpine as builder

FROM node:8.12.0-alpine as prod

RUN apk update \
        && apk upgrade \
        && apk add --no-cache bash \
        bash-doc \
        bash-completion \
        && rm -rf /var/cache/apk/* \
        && /bin/bash
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk

CMD [ "/bin/bash" ]
