# Use the official OpenJDK image to run the application
FROM openjdk:17-jdk

# Set the working directory
WORKDIR /app

# Copy the versioned JAR file into the Docker image
COPY target/java-basic-0.0-beta.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

# Expose the port the application runs on
EXPOSE 8080

