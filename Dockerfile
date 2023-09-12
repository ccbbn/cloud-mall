
FROM openjdk:17
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} nomargin-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/nomargin-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080