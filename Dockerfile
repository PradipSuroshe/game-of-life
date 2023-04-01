FROM tomcat:latest
MAINTAINER Pradip Suroshe
COPY /root/.jenkins/workspace/gameoflife/gameoflife-web/target/gameoflife.war server:/usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
