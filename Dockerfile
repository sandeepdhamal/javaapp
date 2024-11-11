FROM openjdk:17
EXPOSE 8080
ADD target/javaapp-0.0.1-SNAPSHOT.war javaapp-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java", "-jar", "/javaapp-0.0.1-SNAPSHOT.war"]