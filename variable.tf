variable "AZURE_SUBSCRIPTION_ID" {}
variable "AZURE_CLIENT_ID" {}
variable "AZURE_CLIENT_SECRET" {}
variable "AZURE_TENANT_ID" {}


# Variable for AKS

variable "location_aks" {
  description = "Azure region for the resources"
  default     = "canadacentral"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "gfakxrg"
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  default     = "gfakxacr"
}

variable "aks_name" {
  description = "Name of the AKS cluster"
  default     = "gfakxaks"
}

variable "dns_prefix" {
  description = "DNS prefix for AKS cluster"
  default     = "gfakxaks"
}

variable "acr_sku" {
  description = "SKU for Azure Container Registry"
  default     = "Standard"
}

variable "aks_node_count" {
  description = "Number of nodes in the AKS cluster"
  default     = 2
}

variable "aks_vm_size" {
  description = "VM size for the AKS nodes"
  default     = "Standard_A2_v2"
}