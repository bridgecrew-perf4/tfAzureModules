#================================================================================
#
# VNET.TF

resource "azurerm_virtual_network" "example" {
  count = var.to_provision == true ? 1 : 0
  name                = var.vnet_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  address_space       = var.address_space
  dns_servers         = var.dns_servers
}

output "vnet_id" {
  value = azurerm_virtual_network.example.id
}
output "vnet_name" {
  value = azurerm_virtual_network.example.name
}