#FROM openjdk:11
#ARG JAR_FILE=./build/libs/nomargin-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]


FROM adoptopenjdk/openjdk11:jdk-11.0.2.9-slim
WORKDIR /opt
ENV PORT 8080
EXPOSE 8080
ARG JAR_FILE=./build/libs/nomargin-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE}  /opt/app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar