FROM openjdk:8

EXPOSE 8080

WORKDIR /usr/src/app

# Copy all of the source code
COPY . .

# Compile
RUN ./mvnw package

# Run the app
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
