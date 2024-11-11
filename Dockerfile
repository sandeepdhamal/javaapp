FROM openjdk:17
EXPOSE 8080
COPY target/javaapp.war /javaapp.war
ENTRYPOINT ["java","-jar","/javaapp.war"]