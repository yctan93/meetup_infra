# Resource group
variable "rg_web_name" {
    type = string
}

variable "rg_app_name" {
    type = string
}

# Virtual network
variable "vnet_web_name" {
    type = string
}

variable "vnet_web_address_space" {
    type = list(string)
}

variable "subnet_web" {
    type = map(object({
        name = string
        address_prefix = string
    }))
}

variable "vnet_app_name" {
    type = string
}

variable "vnet_app_address_space" {
    type = list(string)
}

variable "subnet_app" {
    type = map(object({
        name = string
        address_prefix = string
    }))
}

# AKS
variable "aks_name" {
    type = string
}
variable "dns_prefix_private_cluster" {
    type = string
}
variable "private_cluster_enabled" {
    type = bool
}
variable "default_node_pool_name" {
    type = string
}
variable "default_node_pool_count" {
    type = number
}
variable "default_node_pool_vm_size" {
    type = string
}
variable "identity_type" {
    type = string
}

# Key vault 
variable "kv_web_name" {
    type = string
}
variable "kv_app_name" {
    type = string
}
variable "enabled_for_disk_encryption" {
    type = bool
}
variable "soft_delete_retention_days" {
    type = number
}
variable "purge_protection_enabled" {
    type = bool
}
variable "sku_name" {
    type = string
}
variable "key_permissions" {
    type = list(string)
}
variable "secret_permissions" {
    type = list(string)
}
variable "storage_permissions" {
    type = list(string)
}

# MSSQL Server
variable "mssql_name" {
    type = string
}

# MSSQL Database
variable "mssql_db_name" {
    type = string
}
variable "collation" {
    type = string
}
variable "license_type" {
    type = string
}
variable "max_size_gb" {
    type = number
}
variable "mssql_db_sku_name" {
    type = string
}
variable "enclave_type" {
    type = string
}

# Public IP
variable "pip_name" {
    type = string
}
variable "allocation_method" {
    type = string
}

# Application gateway
variable "appgw_name" {
    type = string
}
variable "appgw_sku_name" {
    type = string
}
variable "appgw_sku_tier" {
    type = string
}
variable "appgw_sku_capacity" {
    type = string
}
variable "gateway_ip_configuration_name" {
    type = string
}
variable "frontend_port_name" {
    type = string
}
variable "frontend_port_port" {
    type = number
}
variable "frontend_ip_configuration_name" {
    type = string
}
variable "backend_address_pool_name" {
    type = string
}
variable "backend_http_settings_name" {
    type = string
}
variable "backend_http_settings_cookie_based_affinity" {
    type = string
}
variable "backend_http_settings_path" {
    type = string
}
variable "backend_http_settings_port" {
    type = number
}
variable "backend_http_settings_protocol" {
    type = string
}
variable "backend_http_settings_request_timeout" {
    type = number
}
variable "http_listener_name" {
    type = string
}
variable "http_listener_protocol" {
    type = string
}
variable "request_routing_rule_name" {
    type = string
}
variable "request_routing_rule_priority" {
    type = number
}
variable "request_routing_rule_type" {
    type = string
}

# Azure Container Registry
variable "acr_name" {
    type = string
}
variable "acr_sku" {
    type = string
}
variable "admin_enabled" {
    type = bool
}

# Private DNS Zone
variable "kv_private_dns_zone_name" {
    type = string
}

variable "acr_private_dns_zone_name" {
    type = string
}

variable "mssqldb_private_dns_zone_name" {
    type = string
}

# Private Endpoint
variable "web_kv_private_endpoint_name" {
    type = string
}
variable "app_kv_private_endpoint_name" {
    type = string
}
variable "app_acr_private_endpoint_name" {
    type = string
}
variable "app_mssqldb_private_endpoint_name" {
    type = string
}
variable "private_service_connection_name" {
    type = string
}
variable "is_manual_connection" {
    type = string
}
variable "private_dns_zone_group_name" {
    type = string
}

# Private DNS Zone link
variable "web_kv_vnet_link_name" {
    type = string
}

variable "app_kv_vnet_link_name" {
    type = string
}

variable "app_acr_vnet_link_name" {
    type = string
}

variable "app_mssqldb_vnet_link_name" {
    type = string
}

variable "location" {
    type = string
}

