FROM maven:3.9-eclipse-temurin-25 AS build

WORKDIR /build
COPY pom.xml .
RUN mvn -B -DskipTests dependency:go-offline
COPY src ./src
RUN mvn -B -DskipTests package

FROM docker:cli AS docker-cli

FROM eclipse-temurin:25-jre

WORKDIR /data
COPY --from=build /build/target/JMusicBot-*-All.jar /app/JMusicBot.jar
COPY --from=docker-cli /usr/local/bin/docker /usr/local/bin/docker

ENTRYPOINT ["java"]
CMD ["-Dnogui=true", "-jar", "/app/JMusicBot.jar"]
