from maven:3.8.1-jdk-11

COPY src /home/app
COPY pom.xml /home/app

RUN mvn -f /home/app/pom.xml clean package

EXPOSE 8080
ENTRYPOINT ["java","-jar","/home/app/target/my-app.jar"]
