# define base docker image

#FROM openjdk:17
#LABEL maintainer="javaguides.net"
#ADD doctormicroservices-0.0.1-SNAPSHOT.jar  doctormicroservices.jar 
#ENTRYPOINT ["java", "-jar", "doctormicroservices.jar"]

FROM openjdk:17
COPY doctormicroservices-0.0.1-SNAPSHOT.jar /app/
WORKDIR /app
CMD ["java", "-jar", "doctormicroservices-0.0.1-SNAPSHOT.jar"]