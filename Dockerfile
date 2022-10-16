FROM centos:8
RUN mkdir /mnt/tomcat/
WORKDIR /mnt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.68/bin/apache-tomcat-9.0.68.zip
RUN unzip apache-tomcat-9.0.68.zip 
RUN yum install java -y
RUN java -version
COPY /mnt/deploy/apache-tomcat-9.0.68/game-of-life-master/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["/mnt/tomcat/bin/catalina.sh", "run"]
