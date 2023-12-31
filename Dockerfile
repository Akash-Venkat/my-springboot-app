FROM ghcr.io/graalvm/graalvm-ce:ol9-java17-22.3.0
WORKDIR = /usr/naas-domain-consumer
ADD ./target/*domain*.jar /usr/my-springboot-app/my-springboot-app.jar
ENTRYPOINT ["java","-jar","/usr/my-springboot-app.jar"]
