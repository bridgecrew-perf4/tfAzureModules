#================================================================================
#
# LBBACKENDADDRESSPOOLADDRESS.TF

resource "azurerm_lbbackendaddresspool_address" "example" {
  name                    = var.lb_backendaddresspooladdress_name
  backend_address_pool_id = var.lb_backendaddresspooladdress_backend_address_pool_id
  virtual_network_id      = var.lb_backendaddresspooladdress_virtual_network_id
  ip_address              = var.lb_backendaddresspooladdress_ip_address
}

output "azurerm_lbbackendaddresspool_address_id" {
    value = azurerm_lbbackendaddresspool_address.example.id
}
output "azurerm_lbbackendaddresspool_address_name" {
    value = azurerm_lbbackendaddresspool_address.example.name
}
