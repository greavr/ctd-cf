# ----------------------------------------------------------------------------------------------------------------------
# CTD Required
# ----------------------------------------------------------------------------------------------------------------------
# VPC Demo Network Name
variable "vpc-name" {
    type = string
    description = "Custom VPC Name"
    default = "infra-golden-demo-vpc"
}
variable "regions" { 
    type = list(object({
        region = string
        cidr = string
        zone = string
        master_cidr = string
        })
    )
    default = [{
            region = "us-central1"
            cidr = "10.0.0.0/24"
            zone = "us-central1-a"
            master_cidr = "192.168.1.0/28"
        }
    ]
}
variable "services_to_enable" {
    description = "List of GCP Services to enable"
    type    = list(string)
    default =  [
        "compute.googleapis.com",
        "iam.googleapis.com",
        "logging.googleapis.com",
        "monitoring.googleapis.com",
        "servicemanagement.googleapis.com",
        "servicecontrol.googleapis.com",
        "storage.googleapis.com",
        "cloudresourcemanager.googleapis.com",
        "trafficdirector.googleapis.com",
        "dns.googleapis.com",
        "servicenetworking.googleapis.com"
    ]
}

# ----------------------------------------------------------------------------------------------------------------------
# CTD Required
# ----------------------------------------------------------------------------------------------------------------------

variable "project_id" {
  type        = string
  description = "project id required"
}
variable "project_name" {
  type        = string
  description = "project name in which demo deploy"
  default = ""
}
variable "project_number" {
  type        = string
  description = "project number in which demo deploy"
  default = ""
}
variable "gcp_account_name" {
  description = "user performing the demo"
  default = ""
}
variable "deployment_service_account_name" {
  description = "Cloudbuild_Service_account having permission to deploy terraform resources"
  default = ""
}
variable "org_id" {
  description = "Organization ID in which project created"
  default = ""
}
variable "data_location" {
  type        = string
  description = "Location of source data file in central bucket" 
  default = ""
}
variable "secret_stored_project" {
    type        = string
    description = "Project where secret is accessing from"
    default = ""
}
