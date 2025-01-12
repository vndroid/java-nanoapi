FROM --platform=$BUILDPLATFORM maven:3.9-eclipse-temurin-11-alpine AS builder
ARG TARGETPLATFORM
WORKDIR /build
COPY . .
RUN set -x \
    && mvn clean package -X

FROM azul/zulu-openjdk-alpine:11.0.22 AS release
COPY --from=builder /build/target/*.jar /usr/local/
WORKDIR /usr/local
CMD ["java", "-jar", "nanoapi.jar"]