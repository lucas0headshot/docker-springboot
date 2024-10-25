FROM maven:3.9.9-eclipse-temurin-23-alpine as maven-build

RUN mvn clean install -Dmaven.test.skip=true -P prod

EXPOSE 8080
ENTRYPOINT ["java","-jar","target/docker-spring-0.0.1-SNAPSHOT.jar", "--spring.profiles.active=prod"]