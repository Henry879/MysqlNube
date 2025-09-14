FROM tomcat:10.1-jdk21
 
WORKDIR /usr/local/tomcat/webapps/

# Copiamos todo el contenido de tu proyecto (jsp + WEB-INF) a una carpeta "webapp"
COPY ./WebContent/ /usr/local/tomcat/webapps/webapp/
COPY ./WebContent/WEB-INF/lib/mysql-connector-java-8.0.26.jar /usr/local/tomcat/lib

EXPOSE 8080
CMD ["catalina.sh", "run"]