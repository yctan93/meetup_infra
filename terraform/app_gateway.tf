module "web-pip" {
    source = "../modules/public_ip"
    pip_name = var.pip_name
    resource_group_name = module.rg-web.rg_name 
    location = var.location
    allocation_method = var.allocation_method 
}

module "web-appgw"{
    source = "../modules/application_gateway"
    appgw_name = var.appgw_name
    resource_group_name = module.rg-web.rg_name
    location = var.location
    appgw_sku_name = var.appgw_sku_name
    appgw_sku_tier = var.appgw_sku_tier
    appgw_sku_capacity = var.appgw_sku_capacity
    gateway_ip_configuration_name = var.gateway_ip_configuration_name
    gateway_ip_configuration_subnet_id = module.vnet-web.subnet_id
    frontend_port_name = var.frontend_port_name
    frontend_port_port = var.frontend_port_port
    frontend_ip_configuration_name = var.frontend_ip_configuration_name
    public_ip_address_id = module.web-pip.pip_id # to change
    backend_address_pool_name = var.backend_address_pool_name
    backend_http_settings_name = var.backend_http_settings_name
    backend_http_settings_cookie_based_affinity = var.backend_http_settings_cookie_based_affinity
    backend_http_settings_path = var.backend_http_settings_path
    backend_http_settings_port = var.backend_http_settings_port
    backend_http_settings_protocol = var.backend_http_settings_protocol
    backend_http_settings_request_timeout = var.backend_http_settings_request_timeout
    http_listener_name = var.http_listener_name
    http_listener_protocol = var.http_listener_protocol
    request_routing_rule_name = var.request_routing_rule_name
    request_routing_rule_priority = var.request_routing_rule_priority
    request_routing_rule_type = var.request_routing_rule_type
}