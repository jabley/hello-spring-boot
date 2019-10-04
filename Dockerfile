FROM amazoncorretto:11

WORKDIR app
ADD gradle ./gradle/
COPY gradlew .
COPY build.gradle settings.gradle ./
ADD src ./src/

RUN ./gradlew build

FROM amazoncorretto:11
WORKDIR app
COPY --from=0 app/build/libs/hello-spring-boot.jar .
EXPOSE 8080
EXPOSE 8081
CMD ["java", "-jar", "hello-spring-boot.jar"]
