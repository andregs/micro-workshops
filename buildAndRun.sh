#!/bin/sh
mvn clean package && docker build -t com.andregs/micro-workshops .
docker rm -f micro-workshops || true && docker run -d -p 8080:8080 -p 4848:4848 --name micro-workshops com.andregs/micro-workshops 
