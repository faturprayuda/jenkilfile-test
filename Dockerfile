FROM maven:3.8.6-jdk-11-slim AS build
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
ADD pom.xml $HOME
ADD . $HOME
RUN mvn -Dmaven.test.skip=true clean package

FROM openjdk:11-jdk-slim
MAINTAINER faturprayuda
WORKDIR /app
COPY --from=build /usr/app/target/*.jar ./hello-world.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","hello-world.jar"]