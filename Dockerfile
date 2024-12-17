# Use an official OpenJDK runtime as a parent image
FROM ubuntu:22.04

# Update system and install required packages (Maven and unzip)
RUN apt-get update -y && \
    apt-get install -y openjdk-11-jdk maven unzip curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install AWS CLI
RUN curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip ./aws

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the application using Maven
RUN mvn clean package

# Run the JAR file
ENTRYPOINT ["java", "-jar", "target/your-app.jar"]

