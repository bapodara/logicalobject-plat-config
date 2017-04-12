FROM openjdk:alpine
VOLUME /tmp
ADD config-server-0.0.1.jar app.jar
RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN bash -c 'touch /app.jar'
RUN mkdir -p /root/.ssh
RUN sh -c 'echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config >> /root/.ssh/config'
ADD id_rsa /root/.ssh/id_rsa
RUN chmod -R 755 /root/.ssh
EXPOSE 8888
ENTRYPOINT ["java","-Djavax.net.ssl.trustStore=/", "-jar", "/app.jar"]
#ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
