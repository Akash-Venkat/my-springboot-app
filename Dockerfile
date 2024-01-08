#FROM eclipse-temurin:17-jre as builder
#WORKDIR application
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} application.jar
#RUN java -Djarmode=layertools -jar application.jar extract
#
#FROM eclipse-temurin:17-jre
#WORKDIR application
#COPY --from=builder application/dependencies/ ./
#COPY --from=builder application/spring-boot-loader/ ./
#COPY --from=builder application/snapshot-dependencies/ ./
#COPY --from=builder application/application/ ./
#ENTRYPOINT ["java", "org.springframework.boot.loader.launch.JarLauncher"]
#


FROM eclipse-temurin:17-jre as builder
WORKDIR = application
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} application.jar
ENV JAVA_OPTS="-Xms375m -Xmx512m"
ENTRYPOINT ["java","-jar","application.jar"]
