FROM maven:3.5.4-jdk-8-alpine as builder

FROM node:8.12.0-alpine as prod

ENV https_proxy=http://10.72.177.222:1080
ENV http_proxy=http://10.72.177.222:1080
ENV no_proxy=11.*,10.*,*.sjgs


RUN apk --update add --no-cache yarn
