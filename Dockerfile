FROM bellsoft/liberica-openjdk-alpine:21

CMD ["./gradlew", "clean", "build"]

VOLUME /tmp

ARG JAR_FILE=build/libs/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE 3000

ENTRYPOINT ["java","-jar","/app.jar"]