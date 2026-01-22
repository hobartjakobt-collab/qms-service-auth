FROM eclipse-temurin:21-jre
WORKDIR /app

COPY qms-service-auth.jar qms-service-auth.jar
COPY application.properties application.properties
COPY logback-auth.xml logback-auth.xml

EXPOSE 8080

# Baca config dari /app (application.properties)
ENV SPRING_CONFIG_LOCATION=classpath:/,file:/app/

CMD ["java","-jar","/app/qms-service-auth.jar"]
