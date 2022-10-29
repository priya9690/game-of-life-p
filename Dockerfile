FROM tomcat:9
COPY ./target/gameoflife.war  /usr/local/tomcat/webapps/
