FROM maven:3.5.4-jdk-8-alpine as builder

RUN echo $JAVA_HOME

FROM node:8.12.0-alpine as prod

RUN apk update \
        && apk upgrade \
        && apk add --no-cache bash \
        bash-doc \
        bash-completion \
        && rm -rf /var/cache/apk/* \
        && /bin/bash
