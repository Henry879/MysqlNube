FROM tomcat:10.1-jdk21
 
WORKDIR /usr/local/tomcat/webapps/
COPY ../ROOT/

EXPOSE 8080
CMD ["catalina.sh", "run"]