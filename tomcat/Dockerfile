FROM tomcat:9.0-jre11-openjdk

RUN mv ./webapps.dist/manager/ ./webapps/manager
COPY ./tomcat/webapps/manager/META-INF/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY ./tomcat/conf/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

COPY ./backend-test/build/libs/test-app.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
