FROM openjdk:8

#change file jar name
COPY target/<FILE NAME>.jar server.jar

#java -server -jar $runtime_file_name --spring.profiles.active=test > ./log.out  2>&1 &
ENTRYPOINT ["java","-server", "-jar", "/server.jar", "--spring.profiles.active=test"]