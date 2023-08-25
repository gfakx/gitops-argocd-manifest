
module "aks" {
  source              = "./aks"
  location            = var.location_aks
  resource_group_name = var.resource_group_name
  aks_node_count      = var.aks_node_count
  aks_vm_size         = var.aks_vm_size
  acr_name            = var.acr_name
  aks_name            = var.aks_name
  dns_prefix          = var.dns_prefix
  acr_sku             = var.acr_sku
}


