FROM tomcat:10.1-jdk21
 
WORKDIR /usr/local/tomcat/webapps/

# Copiamos todo el contenido de tu proyecto (jsp + WEB-INF) a una carpeta "webapp"
COPY ./WebContent/ /usr/local/tomcat/webapps/MySql_Nube_HenryCarreño/
# Copiar todos los .jar de la carpeta lib
COPY ./WebContent/WEB-INF/lib/*.jar /usr/local/tomcat/lib/
EXPOSE 8080
CMD ["catalina.sh", "run"]