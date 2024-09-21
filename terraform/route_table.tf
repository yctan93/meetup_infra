module "web-route-table" {
    source = "../modules/route_table"
    route_table_name = var.route_table_name_web
    location = var.location
    resource_group_name = module.rg-web.rg_name
    route = var.route_web
    subnet_id = module.vnet-web.subnet_id
}

module "app-route-table" {
    source = "../modules/route_table"
    route_table_name = var.route_table_name_app
    location = var.location
    resource_group_name = module.rg-app.rg_name
    route = var.route_app
    subnet_id = module.vnet-app.subnet_id
}