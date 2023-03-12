FROM maven:3.9.0-eclipse-temurin-11 as build
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
ADD . $HOME
RUN --mount=type=cache,target=/root/.m2 mvn -f $HOME/pom.xml clean package -DskipTests

FROM eclipse-temurin:11-jdk-alpine
COPY --from=build /usr/app/target/actuator.jar /app/runner.jar
ENTRYPOINT java -jar /app/runner.jar