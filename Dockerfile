FROM tomcat:10.1-jdk21
 
WORKDIR /usr/local/tomcat/webapps/

# Copiamos todo el contenido de tu proyecto (jsp + WEB-INF) a una carpeta "webapp"
COPY ./MySql_Nube_HenryCarreño ./webapp

EXPOSE 8080
CMD ["catalina.sh", "run"]