# Use OpenJDK as the base image
FROM openjdk:21-jdk

  # Set the working directory in the container
WORKDIR /app

  # Copy the JAR file into the container
COPY  target/demo-0.0.1-SNAPSHOT.jar /app

  # Copy the start.sh script into the container
COPY start_docker.sh .

  # Make the start.sh script executable
RUN chmod +x start_docker.sh

  # Expose any ports your application might use (optional)
EXPOSE 8080
EXPOSE 5005

  # Command to run the start.sh script when the container starts
CMD ["./start_docker.sh"]