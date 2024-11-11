FROM openjdk:17
EXPOSE 8080
ADD javaapp.war javaapp.war
ENTRYPOINT ["java", "-jar", "/*.war"]