#================================================================================
#
# CONNECTION.TF

resource "azurerm_virtual_network_gateway_connection" "example" {
  name                = var.vpncon_name
  resource_group_name = var.resource_group
  location            = var.location
  type                       = "IPsec"
  virtual_network_gateway_id = var.vpncon_vnetgw_id
  local_network_gateway_id   = var.vpncon_localgw_id
  shared_key = var.vpncon_shared_key
}

output "vpncon_id" {
  value = azurerm_virtual_network_gateway_connection.example.id
}
output "vpncon_name" {
  value = azurerm_virtual_network_gateway_connection.example.name
}