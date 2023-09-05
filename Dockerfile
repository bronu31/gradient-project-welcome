FROM openjdk:17-jdk-slim-buster
COPY src /home/app/src
COPY pom.xml /home/app


CMD mvn pom.xml clean package

#
# Package stage
#

COPY target/*.jar /colors-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/colors-0.0.1-SNAPSHOT.jar"]
