#!/usr/bin/env bash

cat << EOS > docker-compose.yaml
version: '3'
services:
  app:
    image: dyoshikawa/laravel
    ports:
      - 3000:3000
    command: bash
    entrypoint: ''
    volumes:
      - .:/work:cached
    working_dir: /work
    tty: true
  mysql:
    image: mysql:5.7
    environment:
      MYSQL_ROOT_PASSWORD: secret
      MYSQL_DATABASE: homestead
      MYSQL_USER: homestead
      MYSQL_PASSWORD: secret
EOS

