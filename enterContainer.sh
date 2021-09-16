#!/usr/bin/env bash

./mvnw verify
echo "The application jar is located at /home/app.jar. You can run it with java -jar /home/app.jar"
docker run -v "${PWD}"/target/sigsegv-alpine-repro-0.0.1-SNAPSHOT.jar:/home/app.jar -it --rm azul/zulu-openjdk-alpine:11 /bin/ash
