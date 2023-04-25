# Logstash on Cloud run
This docker container is logstash with input_google_pubsub plugin and [insert your destination] output plugin

## Kitten may die 
This code is not ment to be used in a production environment! Please review before usage.

## Requirements
- GCP Project id
- PubSub Topic and Subscription
- Security command center enable and notificationConfig setup to send findings to Pubsub

### Optional
Service account can be added to the configuration (logstash.conf) if cloud run service account is not used to pull data from pubsub

### Cloud Build
Use Cloud build to build your container and push it to gcr
```
gcloud builds submit --tag gcr.io/[your-project-id]/gcp-sccp-logstash
```

### Docker
Use docker to build and run your application

#### Build the container image using Docker
```
docker build -t gcp-sccp-logstash .
```


