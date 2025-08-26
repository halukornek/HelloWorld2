# Dockerfile
FROM registry.access.redhat.com/ubi8/openjdk-17

COPY target/hello-world-java-1.0.0.jar /deployments/app.jar

ENV JAVA_APP_JAR=app.jar

CMD ["/opt/jboss/container/java/run/run-java.sh"]

