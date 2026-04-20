FROM openjdk:17
WORKDIR /app
COPY . .
RUN ./mvnw clean package || mvn clean package
CMD ["java", "-jar", "target/demo-1.0.jar"]
