FROM openjdk as builder

COPY . /source
WORKDIR /source
RUN apt-get update --quiet
RUN apt-get --assume-yes install  maven
RUN mvn clean package


FROM styx.lenze.com:5000/mosaiq-store/jre11
COPY --from=builder /source/target/*.jar application.jar

# This Dockerfile assumes that ES is running externally.
ENTRYPOINT ["java", "-jar", "application.jar"]
