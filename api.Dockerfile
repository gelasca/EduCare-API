FROM openjdk:17
WORKDIR /home/myapi
COPY ./target/api-0.0.1-SNAPSHOT.jar /home/myapi/
# RUN java -jar api-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD [ "java", "-jar", "api-0.0.1-SNAPSHOT.jar" ]