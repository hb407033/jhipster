FROM maven:3.5.4-jdk-8-alpine as builder

FROM node:8.12.0-alpine as prod

CMD [ "node" ]
