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
    default = "8b8fdec5-790a-4029-a7e5-a8b5cb5f4e50"
}

variable "tenant_id" {
    description = "Tenant ID"
    default = "93433ec6-28a5-4756-b39c-baa0d6174e40"
}

variable "client_id" {
    description = "Client ID"
    default = "e0a8e7fe-3905-4016-a5c7-dc101a4139f6"
}

variable "client_secret" {
    description = "Client secret id"
    default = "lxO8Q~uHjkprQZiOhvGKSlmGf14smUZuwZbuxcYX"
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
