# Start with a base image containing Java runtime
FROM eclipse-temurin:17-jdk-alpine

# Add a volume pointing to /tmp
VOLUME /tmp

# Add Maintainer Info
LABEL maintainer="example@brycen.com.vn"

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=build/libs/*.jar

# Add the application's jar to the container
ADD ${JAR_FILE} app.jar

# Run the jar file 
ENTRYPOINT ["java","-jar","/app.jar"]