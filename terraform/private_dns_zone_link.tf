module "web-kv-vnet-link" {
    source = "../modules/private_dns_zone_link"
    vnet_link_name = var.web_kv_vnet_link_name
    resource_group_name = module.rg-web.rg_name
    private_dns_zone_name = module.web-kv-privatednszone.private_dns_zone_name
    virtual_network_id = module.vnet-web.vnet_id
}

module "app-kv-vnet-link" {
    source = "../modules/private_dns_zone_link"
    vnet_link_name = var.app_kv_vnet_link_name
    resource_group_name = module.rg-app.rg_name
    private_dns_zone_name = module.app-kv-privatednszone.private_dns_zone_name
    virtual_network_id = module.vnet-app.vnet_id
}

module "app-acr-vnet-link" {
    source = "../modules/private_dns_zone_link"
    vnet_link_name = var.app_acr_vnet_link_name
    resource_group_name = module.rg-app.rg_name
    private_dns_zone_name = module.app-acr-privatednszone.private_dns_zone_name
    virtual_network_id = module.vnet-app.vnet_id
}

module "app-mssqldb-vnet-link" {
    source = "../modules/private_dns_zone_link"
    vnet_link_name = var.app_mssqldb_vnet_link_name
    resource_group_name = module.rg-app.rg_name
    private_dns_zone_name = module.app-mssqldb-privatednszone.private_dns_zone_name
    virtual_network_id = module.vnet-app.vnet_id
}