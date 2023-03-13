#!/bin/sh
cd /challan-service
java -javaagent:dd-java-agent.jar -Ddd.profiling.enabled=true -Ddd.logs.injection=true -Ddd.service=oms-purchase-service-prod -Ddd.env=production -jar -Dspring.profiles.active=$ENV -Dspring.rabbitmq.port=$AMQP_PORT -Dspring.rabbitmq.host=$AMQP_HOST -Dspring.rabbitmq.username=$AMQP_USER -Dspring.rabbitmq.password=$AMQP_PASSWORD -Dspring.rabbitmq.virtual-host=$AMQP_VHOST -Dspring.datasource.url=$DB_HOST -Dspring.datasource.username=$DB_USER -Dspring.datasource.password=$DB_PASSWORD -Damazon.accessKey=$AMZ_ACCESS_KEY -Damazon.secretKey=$AMZ_SECRET_KEY $JAR
