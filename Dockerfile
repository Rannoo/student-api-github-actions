FROM openjdk:15-jdk-alpine
VOLUME /main-app
EXPOSE 8080
RUN mkdir -p /app/
RUN mkdir -p /app/logs/
ADD target/student-api-0.0.1-SNAPSHOT.jar /app/student-api.jar
ENTRYPOINT ["java","-jar", "/app/student-api.jar"]