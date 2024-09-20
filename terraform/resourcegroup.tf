module "rg-web" {
  source = "../modules/resource_group"
  name = var.rg_web_name
  location = var.location
}

module "rg-app" {
  source = "../modules/resource_group"
  name = var.rg_app_name
  location = var.location
}
