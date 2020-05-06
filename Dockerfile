FROM tomcat.8.0

RUN echo "$PWD"

ADD /var/lib/jenkins/workspace/docker-compose_master/target/demo.war /usr/local/tomcat/webapps/



EXPOSE 8080

CMD ["catalina.sh", "run"]
