resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix_private_cluster = var.dns_prefix_private_cluster
  private_cluster_enabled = var.private_cluster_enabled

  default_node_pool {
    name       = var.default_node_pool_name
    node_count = var.default_node_pool_count
    vm_size    = var.default_node_pool_vm_size #"Standard_D2_v2"
  }

  identity {
    type = var.identity_type #"SystemAssigned"
  }
}