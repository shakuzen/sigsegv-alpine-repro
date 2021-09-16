#!/usr/bin/env bash

./mvnw verify
docker run -v "${PWD}"/target/sigsegv-alpine-repro-0.0.1-SNAPSHOT.jar:/home/app.jar -it --rm azul/zulu-openjdk-alpine:11 java -jar /home/app.jar --logging.level.io.micrometer=debug
