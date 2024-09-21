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

# AKS
aks_name = "aks-dev-app"
dns_prefix_private_cluster = "exampleprivateaks"
private_cluster_enabled = true
default_node_pool_name = "nodepool1"
default_node_pool_count = 1
default_node_pool_vm_size = "Standard_D2_v2"
identity_type = "SystemAssigned"

#Key vault
kv_web_name = "kv-dev-web"
kv_app_name = "kv-dev-app"
enabled_for_disk_encryption = true
soft_delete_retention_days = 7
purge_protection_enabled = false
sku_name = "standard"
key_permissions = ["Get"]
secret_permissions = ["Get"]
storage_permissions  = ["Get"]

# MSSQL Server
mssql_name = "mssqlserver-dev-app"

# MSSQL Database
mssql_db_name = "mssqldb-dev-app"
collation = "SQL_Latin1_General_CP1_CI_AS"
license_type = "LicenseIncluded"
max_size_gb = 2
mssql_db_sku_name = "S0"
enclave_type = "Default"

# Public IP
pip_name = "pip-dev-web"
allocation_method = "Static"

# Application gateway
appgw_name = "appgw-dev-web"
appgw_sku_name = "Standard_v2"
appgw_sku_tier = "Standard_v2"
appgw_sku_capacity = 2
gateway_ip_configuration_name = "appgw-gateway-ip-config"
frontend_port_name = "appgw-frontend-port"
frontend_port_port = 80
frontend_ip_configuration_name = "appgw-frontend-ip-config"
backend_address_pool_name = "appgw-backend-address-pool"
backend_http_settings_name = "appgw-backend-http-settings"
backend_http_settings_cookie_based_affinity = "Disabled"
backend_http_settings_path = "/path1/" # To update according to application deployed in AKS
backend_http_settings_port = 80
backend_http_settings_protocol = "Http"
backend_http_settings_request_timeout = 60
http_listener_name = "appgw-http-listener"
http_listener_protocol = "Http"
request_routing_rule_name = "appgw-request-routing-rule"
request_routing_rule_priority = 9
request_routing_rule_type = "Basic"

location = "South East Asia"