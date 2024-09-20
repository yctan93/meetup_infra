module "vnet-web" {
  source = "../modules/virtual_network"
  name = var.vnet_web_name
  location = var.location
  resource_group_name = module.rg-web.rg_name
  address_space = var.vnet_web_address_space
  subnet = var.subnet_web
}

module "vnet-app" {
  source = "../modules/virtual_network"
  name = var.vnet_app_name
  location = var.location
  resource_group_name = module.rg-app.rg_name
  address_space = var.vnet_app_address_space
  subnet = var.subnet_app
}