module "web-kv-private-endpoint" {
    source = "../modules/private_endpoint"
    private_endpoint_name = var.web_kv_private_endpoint_name
    location = var.location
    resource_group_name = module.rg-web.rg_name
    subnet_id = module.vnet-web.subnet_id
    private_service_connection_name = var.private_service_connection_name
    private_connection_resource_id = module.app-kv.kv_id
    is_manual_connection = var.is_manual_connection
    private_dns_zone_group_name = var.private_dns_zone_group_name
    private_dns_zone_group_private_dns_zone_ids = [module.web-kv-privatednszone.private_dns_zone_id]
}

module "app-kv-private-endpoint" {
    source = "../modules/private_endpoint"
    private_endpoint_name = var.app_kv_private_endpoint_name
    location = var.location
    resource_group_name = module.rg-app.rg_name
    subnet_id = module.vnet-app.subnet_id
    private_service_connection_name = var.private_service_connection_name
    private_connection_resource_id = module.app-kv.kv_id
    is_manual_connection = var.is_manual_connection
    private_dns_zone_group_name = var.private_dns_zone_group_name
    private_dns_zone_group_private_dns_zone_ids = [module.app-kv-privatednszone.private_dns_zone_id]
}

module "app-acr-private-endpoint" {
    source = "../modules/private_endpoint"
    private_endpoint_name = var.app_acr_private_endpoint_name
    location = var.location
    resource_group_name = module.rg-app.rg_name
    subnet_id = module.vnet-app.subnet_id
    private_service_connection_name = var.private_service_connection_name
    private_connection_resource_id = module.app-acr.acr_id # To change to acr
    is_manual_connection = var.is_manual_connection
    private_dns_zone_group_name = var.private_dns_zone_group_name
    private_dns_zone_group_private_dns_zone_ids = [module.app-acr-privatednszone.private_dns_zone_id]
}

module "app-mssqldb-private-endpoint" {
    source = "../modules/private_endpoint"
    private_endpoint_name = var.app_mssqldb_private_endpoint_name
    location = var.location
    resource_group_name = module.rg-app.rg_name
    subnet_id = module.vnet-app.subnet_id
    private_service_connection_name = var.private_service_connection_name
    private_connection_resource_id = module.mssql-db.mssqldb_id
    is_manual_connection = var.is_manual_connection
    private_dns_zone_group_name = var.private_dns_zone_group_name
    private_dns_zone_group_private_dns_zone_ids = [module.app-mssqldb-privatednszone.private_dns_zone_id]
}