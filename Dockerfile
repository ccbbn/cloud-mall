FROM eclipse-temurin:17-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=./build/libs/nomargin-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
