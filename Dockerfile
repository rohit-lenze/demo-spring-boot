FROM maven as builder

COPY . /source
WORKDIR /source

RUN mvn clean package


FROM openjdk
COPY --from=builder /source/target/*.jar application.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "application.jar"]
