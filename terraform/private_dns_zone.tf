module "web-kv-privatednszone" {
    source = "../modules/private_dns_zone"
    private_dns_zone_name =  var.kv_private_dns_zone_name
    resource_group_name = module.rg-web.rg_name
}

module "app-kv-privatednszone" {
    source = "../modules/private_dns_zone"
    private_dns_zone_name =  var.kv_private_dns_zone_name
    resource_group_name = module.rg-app.rg_name
}

module "app-acr-privatednszone" {
    source = "../modules/private_dns_zone"
    private_dns_zone_name =  var.acr_private_dns_zone_name
    resource_group_name = module.rg-app.rg_name
}

module "app-mssqldb-privatednszone" {
    source = "../modules/private_dns_zone"
    private_dns_zone_name =  var.mssqldb_private_dns_zone_name
    resource_group_name = module.rg-app.rg_name
}


