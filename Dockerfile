FROM openjdk:8
WORKDIR /app/jetty

COPY jetty /app/jetty

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/Shanghai" > /etc/timezone


CMD  java -Djava.security.egd=file:/dev/./urandom -jar ./start.jar 


