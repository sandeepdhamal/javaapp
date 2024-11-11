FROM openjdk:17
EXPOSE 8080
ADD target/javaapp-jenkins-integration.war javaapp-jenkins-integration.war
ENTRYPOINT ["java","-jar","/javaapp-jenkins-integration.war"]