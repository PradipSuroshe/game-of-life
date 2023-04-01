FROM tomcat:latest
MAINTAINER Pradip Suroshe
ADD /root/.jenkins/workspace/gameoflife/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
