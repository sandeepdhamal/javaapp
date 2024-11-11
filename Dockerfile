FROM openjdk:17
EXPOSE 8080
COPY target/javaapp.jar /javaapp.jar
ENTRYPOINT ["java","-jar","/javaapp.jar"]