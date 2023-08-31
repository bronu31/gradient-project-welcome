FROM openjdk:17-jdk-slim-buster
COPY src /home/app/src
COPY pom.xml /home/app


CMD mvn pom.xml clean package

#
# Package stage
#

COPY out/artifacts/colors_jar/*.jar /colors.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/colors.jar"]
