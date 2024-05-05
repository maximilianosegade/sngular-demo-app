FROM maven:3.9.6-amazoncorretto-17 AS java-builder

COPY [".", "./"]
RUN mvn clean package

FROM amazoncorretto:17-alpine3.19-jdk
WORKDIR /app
COPY --from=java-builder target/rest-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]