FROM openjdk:17-jdk-slim
WORKDIR /apps
COPY target/demo-0.0.1-SNAPSHOT.jar new.jar
EXPOSE 8086
ENTRYPOINT ["java","-jar","new.jar"]