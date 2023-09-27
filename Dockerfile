FROM openjdk:17-jdk-alpine

COPY . .

RUN apk add maven

RUN mvn clean package

EXPOSE 8080

CMD [ "java", "-jar",  "/.mvn/wrapper/maven-wrapper.jar"]
