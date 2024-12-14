   # Use an official OpenJDK runtime as a parent image
   FROM amazoncorretto:11

   # Install Maven
   RUN yum update -y && \
       yum install -y maven

   # Install AWS CLI
   RUN curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
       unzip awscliv2.zip && \
       ./aws/install

   # Set the working directory in the container
   WORKDIR /app

   # Copy the current directory contents into the container at /app
   COPY . /app

   # Build the application using Maven
   RUN mvn clean package

   # Run the JAR file
   ENTRYPOINT ["java", "-jar", "target/your-app.jar"]
