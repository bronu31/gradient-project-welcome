FROM maven:3.8.3-openjdk-17

COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package


#
# Package stage
#

#ADD colors-0.0.1-SNAPSHOT.jar /home/app/target/*.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/home/app/target/colors-0.0.1-SNAPSHOT.jar"]
