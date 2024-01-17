FROM openjdk:17
LABEL project="petclinic"
LABEL author="devops team"
WORKDIR /spring-petclinic
EXPOSE 8080
COPY --from=build **/target/spring-petclinic-2.7.3.jar /spring-petclinic-2.7.3.jar
CMD ["java", "-jar", "/spring-petclinic-2.7.3.jar"]