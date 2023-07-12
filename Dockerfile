FROM wave.md/library/zulu-openjdk:11-alpine3.18
COPY nanoapi.jar /usr/local/
WORKDIR /usr/local
CMD java -jar nanoapi.jar