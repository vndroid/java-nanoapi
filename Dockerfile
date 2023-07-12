FROM wave.md/library/zulu-openjdk:11-alpine3.18
COPY spring-boot-initial-0.1.1.jar /usr/local/
WORKDIR /usr/local
CMD java -jar spring-boot-initial-0.1.1.jar