FROM flowable/java8_server
LABEL Author="Jorge Mora Giménez"
LABEL version="1.0"
ARG WAR_FILE
ADD ${WAR_FILE} app.war
ENTRYPOINT ["java", "-jar", "/app.war"]