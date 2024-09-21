module "app-aks"{
    source = "../modules/aks"
    aks_name = var.aks_name
    location = var.location
    resource_group_name = module.rg-app.rg_name
    dns_prefix_private_cluster = var.dns_prefix_private_cluster
    private_cluster_enabled = var.private_cluster_enabled
    default_node_pool_name = var.default_node_pool_name
    default_node_pool_count = var.default_node_pool_count
    default_node_pool_vm_size = var.default_node_pool_vm_size
    identity_type = var.identity_type
}