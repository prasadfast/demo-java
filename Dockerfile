FROM tomcat.8.0

RUN echo "$PWD"

ADD target/demo.war /usr/local/tomcat/webapps/



EXPOSE 8080

CMD ["catalina.sh", "run"]
