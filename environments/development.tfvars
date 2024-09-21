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

# VNet peering
web_to_app_vnet_peering_name = "vnet_peering-dev-web_to_app"
app_to_web_vnet_peering_name = "vnet_peering-dev-app_to_web"

# Network security group
nsg_name_web = "nsg-dev-web"
security_rule_web = {
    001 = {
        name = "nsgr-200-inbound"
        priority = 200
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "*"
        source_address_prefix = "10.2.1.0/24"
        destination_address_prefix = "10.1.1.0/24" 
        description = "Allow inbound from subnet in app vnet to subnet in web vnet"
    }

    002 = {
        name = "nsgr-200-outbound"
        priority = 200
        direction = "Outbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "*"
        source_address_prefix = "10.1.1.0/24" 
        destination_address_prefix = "10.2.1.0/24"
        description = "Allow outbound from subnet in web vnet to subnet in app vnet"
    }
}

nsg_name_app = "nsg-dev-app"
security_rule_app = {
    001 = {
        name = "nsgr-200-inbound"
        priority = 200
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "*"
        source_address_prefix = "10.1.1.0/24"
        destination_address_prefix = "10.2.1.0/24" 
        description = "Allow inbound from subnet in web vnet to subnet in app vnet"
    }

    002 = {
        name = "nsgr-200-outbound"
        priority = 200
        direction = "Outbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "*"
        source_address_prefix = "10.2.1.0/24" 
        destination_address_prefix = "10.1.1.0/24"
        description = "Allow outbound from subnet in app vnet to subnet in web vnet"
    }
}

# Route table
route_table_name_web = "route_table-dev-web"
route_web = {
    001 = {
        name = "route-web-to-app"
        address_prefix = "10.2.1.0/24"
        next_hop_type = "VnetLocal"
    }
}

route_table_name_app = "route_table-dev-app"
route_app = {
    001 = {
        name = "route-app-to-web"
        address_prefix = "10.1.1.0/24"
        next_hop_type = "VnetLocal"
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

# Azure container registry
acr_name = "acrdevapp"
acr_sku = "Standard"
admin_enabled = false

# Private DNS zone
kv_private_dns_zone_name = "privatelink.vaultcore.windows.net"
acr_private_dns_zone_name = "privatelink.azurecr.windows.net"
mssqldb_private_dns_zone_name = "privatelink.database.windows.net"

# Private endpoint
web_kv_private_endpoint_name = "web-dev-kv-private-endpoint"
app_kv_private_endpoint_name = "app-dev-kv-private-endpoint"
app_acr_private_endpoint_name = "app-dev-acr-private-endpoint"
app_mssqldb_private_endpoint_name = "app-dev-mssqldb-private-endpoint"
private_service_connection_name = "web-dev-kv-private-service-connection"
is_manual_connection = false
private_dns_zone_group_name = "web-dev-kv-private-dns-zone-group-name"

# Private virtual network link
web_kv_vnet_link_name = "web-dev-kv-vnet-link"
app_kv_vnet_link_name = "app-dev-kv-vnet-link"
app_acr_vnet_link_name = "app-dev-acr-vnet-link"
app_mssqldb_vnet_link_name = "app-dev-mssqldb-vnet-link"

location = "South East Asia"