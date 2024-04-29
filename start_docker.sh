#!/bin/bash
java -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=*:5005 -jar /app/demo-0.0.1-SNAPSHOT.jar
