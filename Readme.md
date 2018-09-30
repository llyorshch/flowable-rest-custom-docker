# Flowable REST app container with Postgresql driver

This is a custom REST app container of the [Flowable](https://www.flowable.org/) REST application. 

It contains the Postgresql driver and requires a running Postgresql instance.

It requires that the Postgresql instance has the database and the credentials from the environment variables properly set.

The image is published in [dockerhub](https://hub.docker.com/r/jorgedoras/flowable-rest-custom-docker/).

## Environment Variables

FLOWABLE_REST_APP_ADMIN_FIRST-NAME=RestAPI  
FLOWABLE_REST_APP_ADMIN_LAST-NAME=Admin  
FLOWABLE_REST_APP_ADMIN_PASSWORD=test  
FLOWABLE_REST_APP_ADMIN_USER-ID=rest-admin  
SERVER_PORT=8080  
SPRING_DATASOURCE_DRIVER-CLASS-NAME=org.postgresql.Driver  
SPRING_DATASOURCE_PASSWORD=DBPASSWORD  
SPRING_DATASOURCE_URL=jdbc:postgresql://DBHOST:5432/flowable  
SPRING_DATASOURCE_USERNAME=DBUSERNAME  

IMPORTANT: If you set this variables with bash, be careful with the "-" character. Bash doesn't accept "-" in the environment variable names. Use "_" instead. Spring Boot works with both.