module "app-acr" {
    source = "../modules/azure_container_registry"
    acr_name = var.acr_name
    resource_group_name = module.rg-app.rg_name
    location = var.location
    acr_sku = var.acr_sku
    admin_enabled = var.admin_enabled
}