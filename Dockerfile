FROM ghcr.io/graalvm/graalvm-ce:ol9-java17-22.3.0
WORKDIR = /usr/naas-domain-consumer
ADD ./target/*domain*.jar /usr/naas-domain-consumer/naas-domain-consumer.jar
ENTRYPOINT ["java","-jar","/app/app.jar"]
