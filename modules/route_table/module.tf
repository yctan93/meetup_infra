resource "azurerm_route_table" "route_table" {
  name                = var.route_table_name
  location            = var.location
  resource_group_name = var.resource_group_name

  dynamic "route" {
    for_each = var.route
    content {
        name           = route.value["name"]
        address_prefix = route.value["address_prefix"]
        next_hop_type  = route.value["next_hop_type"]
    } 
  }
}

resource "azurerm_subnet_route_table_association" "route_table_association" {
  subnet_id      = var.subnet_id
  route_table_id = azurerm_route_table.route_table.id

  depends_on = [ azurerm_route_table.route_table ]
}