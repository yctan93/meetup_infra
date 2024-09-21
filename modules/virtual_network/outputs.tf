output "vnet_name" {
    value = azurerm_virtual_network.vnet.name
}

output "vnet_id" {
    value = azurerm_virtual_network.vnet.id
}

output "subnet_id" {
    # Flatten function to output the subnet ID
    value = element(azurerm_virtual_network.vnet.subnet[*].id, 0) 
}