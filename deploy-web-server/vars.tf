variable "prefix" {
  description = "The prefix which should be used for all resources in this project"
  default = "azdevops"
}

variable "resourcegroup" {
  description = "Enter name of the resource group "
  default = "Azuredevops"
}

variable "location" {
  description = "The Azure Region in which all resources in this project should be created."
  default = "eastus" 
}


variable "subscription_id" {
    description = "Azure subscription id"
    default = "c9f1e8cb-24a3-405b-9046-bf2b34125d0c"
}

variable "tenant_id" {
    description = "Tenant ID"
    default = "f958e84a-92b8-439f-a62d-4f45996b6d07"
}

variable "client_id" {
    description = "Client ID"
    default = "7e3ad72a-4263-4926-bcfe-c9321be011ec"
}

variable "client_secret" {
    description = "Client secret id"
    default = "4X88Q~9gBeFpK94yp0HxHShwHYNSSBD9W1q-1aB7"
}

variable "vm_count" {
  description = "Number of virtual machines to deploy"
  type        = number
  default     = 2
}

variable "deployment_name" {
  description = "Name of the deployment"
  type        = string
  default     = "packer-deployment"
}

variable "password" {
    description = "The Azure resource password"
    default = "P@ssw0rd0987!" 
    sensitive = true
}

variable "username" {
    description = "The Azure admin username"
    default     = "DevOpsAdmin" 
    sensitive   = true
}

variable "tags" {
  type = map
  default = {
    project = "udacity-webserver"
  }
}
