FROM openjdk:17-jdk-alpine
EXPOSE 8080
ADD target/springboot-docker-0.0.1-SNAPSHOT.jar springboot-docker.jar
ENTRYPOINT ["java","-jar","/springboot-docker.jar"]