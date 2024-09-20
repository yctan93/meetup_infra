# Resource group
rg_web_name = "rg-dev-web"
rg_app_name = "rg-dev-app"

# Virtual network
vnet_web_name = "vnet-dev-web"
vnet_web_address_space = ["10.1.0.0/16"]
subnet_web = {
    001 = {
        name = "web-subnet-1"
        address_prefix = "10.1.1.0/24"
    }
}

# Virtual network
vnet_app_name = "vnet-dev-app"
vnet_app_address_space = ["10.2.0.0/16"]
subnet_app = {
    001 = {
        name = "app-subnet-1"
        address_prefix = "10.2.1.0/24"
    }
}

location = "South East Asia"