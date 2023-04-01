FROM tomcat:latest
MAINTAINER Pradip Suroshe
ADD /root/.jenkins/workspace/gameoflife-project/gameoflife-web/target/gameoflife /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
