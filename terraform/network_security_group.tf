module "nsg-web" {
    source = "../modules/network_security_group"
    nsg_name = var.nsg_name_web
    location = var.location
    resource_group_name = module.rg-web.rg_name
    security_rule = var.security_rule_web
    subnet_id = module.vnet-web.subnet_id
}

module "nsg-app" {
    source = "../modules/network_security_group"
    nsg_name = var.nsg_name_app
    location = var.location
    resource_group_name = module.rg-app.rg_name
    security_rule = var.security_rule_app
    subnet_id = module.vnet-app.subnet_id
}