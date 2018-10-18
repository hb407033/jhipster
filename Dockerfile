FROM node:8.12.0-alpine as prod

RUN apk update \
        && apk upgrade \
        && apk add --no-cache bash \
        bash-doc \
        bash-completion \
        && rm -rf /var/cache/apk/* \
        && /bin/bash

FROM maven:3.5.4-jdk-8-alpine as builder

RUN ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn \
    && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg \
    && java -version
    
ENV PATH $PATH:/usr/local/bin/yarn

RUN yarn -v
