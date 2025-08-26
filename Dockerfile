FROM registry.access.redhat.com/ubi8/openjdk-17

COPY target/hello-world-1.0.0.jar /deployments/app.jar

ENV JAVA_APP_JAR=app.jar
EXPOSE 8080

CMD ["/opt/jboss/container/java/run/run-java.sh"]

