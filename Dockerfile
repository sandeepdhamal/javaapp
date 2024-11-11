FROM openjdk:17
EXPOSE 8080
COPY target/javaapp.war /javaapp.war
ENTRYPOINT ["java","-war","/javaapp.war"]