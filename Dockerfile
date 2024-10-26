FROM maven:3.9.9-eclipse-temurin-23-alpine as maven-build

COPY . /usr/src/mymaven/

WORKDIR /usr/src/mymaven/
RUN mvn clean install -Dmaven.test.skip=true

EXPOSE 8080
ENTRYPOINT ["java","-jar","target/docker-spring-0.0.1-SNAPSHOT.jar"]