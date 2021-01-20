#================================================================================
#
# PUBLICIP.TF

resource "azurerm_public_ip" "example" {
  count = var.to_provision == true ? 1 : 0
  name                = var.publicip_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  allocation_method   = var.allocation_method
}

output "publicip_id" {
    value = azurerm_public_ip.example[0].id
}
output "publicip_ip_address" {
    value = azurerm_public_ip.example[0].ip_address
}
output "publicip_name" {
    value = azurerm_public_ip.example[0].name
}