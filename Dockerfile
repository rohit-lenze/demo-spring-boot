FROM styx.lenze.com:5000/mosaiq-store/jdk11 as builder

# 'pune' or 'bremen'
ARG MAVEN_SETTINGS=pune
# add predefined settings
ADD http://nat01.encowayhb.lokal:8081/repository/settings/maven/settings-${MAVEN_SETTINGS}.xml /maven-settings.xml

COPY . /source
WORKDIR /source

# Use the defined settings
RUN mvn -s /maven-settings.xml clean package


FROM styx.lenze.com:5000/mosaiq-store/jre11
COPY --from=builder /source/target/*.jar application.jar

# This Dockerfile assumes that ES is running externally.
ENTRYPOINT ["java", "-jar", "application.jar"]
