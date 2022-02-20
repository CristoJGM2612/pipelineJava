FROM tomcat:9.0
LABEL maintainer="cristo@iespuerto.es"

ARG WAR_FILE=target/*.war

ADD ${WAR_FILE} /usr/local/tomcat/webapps/

EXPOSE 8091
CMD [ "catalina.sh", "run" ]