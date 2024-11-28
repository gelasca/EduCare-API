FROM openjdk:17
WORKDIR /home/myapi
COPY ./target/api-0.0.1-SNAPSHOT.jar /home/myapi/
ENV DATABASE_HOST="172.31.1.2"
ENV DATABASE_PORT="5432"
ENV DATABASE_NAME="educare"
ENV POSTGRES_USERNAME="postgres"
ENV POSTGRES_PASSWORD="123123"
EXPOSE 8080
CMD [ "java", "-jar", "api-0.0.1-SNAPSHOT.jar" ]