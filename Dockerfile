FROM tomcat.8.0

COPY ./target/demo.war /usr/local/tomcat/webapps/

RUN echo "$PWD"

EXPOSE 8080

CMD ["catalina.sh", "run"]
