# Cloud Run Three Ways

**Direct Public Access** - Using the Cloud Function Endpoint
**Behind ALB** - Using Serverless Network Endpoint Groups, exposed via Application Load Balancer
**Serverless VPC Connection** - Connect via VPC to your cloud functions, no public access

Requirement: **GCP PROJECT INTO WHICH TO DEPLOY**

# Tool Setup Guide

[Tool Install Guide](tools/ReadMe.md)

# Environment Setup
* Install tools
* Run the following commands to login to gcloud:
```
gcloud auth login
gcloud auth application-default login
```

This will setup your permissions for terraform to run.

# Deploy guide
```
cd terraform
terraform init
terraform plan
terraform apply
```
