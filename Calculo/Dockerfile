FROM python:3.10-alpine3.22

RUN addgroup main && adduser -S -G main main
USER main

WORKDIR /app/
RUN mkdir datos

COPY . .