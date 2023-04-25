#Base image
FROM docker.elastic.co/logstash/logstash:8.7.0

#Install Google PubSub Input Plugin
RUN bin/logstash-plugin install logstash-input-google_pubsub

#Add new configuration
ADD pipeline/logstash.conf /usr/share/logstash/pipeline/
ADD config/logstash.yml /usr/share/logstash/config/

#Optional
#Add Account key to read PubSub subcription
#ADD key/key.json /usr/share/logstash/key/

#Required if exposed on Cloud Run
EXPOSE 9600