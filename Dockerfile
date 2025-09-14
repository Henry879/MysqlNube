FROM tomcat:10.1-jdk21
 
WORKDIR /usr/local/tomcat/webapps/

# Copiamos todo el contenido de tu proyecto (jsp + WEB-INF) a una carpeta "webapp"
COPY ./WebContent /usr/local/tomcat/webapps/MySql_Nube_HenryCarreño/
COPY ./WebContent/WEB-INF/lib/mysql-connector-java-9.2.0.jar /usr/local/tomcat/lib/

EXPOSE 8080
CMD ["catalina.sh", "run"]