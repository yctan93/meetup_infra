module "web_to_app_vnet_peering" {
    source = "../modules/vnet_peering"
    vnet_peering_name = var.web_to_app_vnet_peering_name
    resource_group_name = module.rg-web.rg_name
    vnet_name = module.vnet-web.vnet_name
    remote_vnet_id = module.vnet-app.vnet_id
}

module "app_to_web_vnet_peering" {
    source = "../modules/vnet_peering"
    vnet_peering_name = var.app_to_web_vnet_peering_name
    resource_group_name = module.rg-app.rg_name
    vnet_name = module.vnet-app.vnet_name
    remote_vnet_id = module.vnet-web.vnet_id
}