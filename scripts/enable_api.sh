#!/bin/bash

PROJECT_ID=$1

gcloud services enable compute.googleapis.com \
container.googleapis.com \
sqladmin.googleapis.com \
redis.googleapis.com \
artifactregistry.googleapis.com \
secretmanager.googleapis.com \
monitoring.googleapis.com \
logging.googleapis.com \
cloudresourcemanager.googleapis.com \
iam.googleapis.com \
cloudbilling.googleapis.com \
--project=global-saas-dev