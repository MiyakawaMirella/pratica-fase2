FROM openjdk:17-jdk-alpine

COPY . .

RUN apk add maven

EXPOSE 8080

CMD [ "java", "-jar",  "/.mvn/wrapper/maven-wrapper.jar"]
