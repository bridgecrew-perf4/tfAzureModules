#================================================================================
#
# LBBACKENDADDRESSPOOLADDRESS.TF

resource "azurerm_lb_backend_address_pool_address" "example" {
  name                    = "example"
  backend_address_pool_id = data.azurerm_lb_backend_address_pool.example.id
  virtual_network_id      = data.azurerm_virtual_network.example.id
  ip_address              = "10.0.200.40"
}

output "azurerm_lb_backend_address_pool_address_id" {
    value = azurerm_lb_backend_address_pool_address.example.id
}
output "azurerm_lb_backend_address_pool_address_name" {
    value = azurerm_lb_backend_address_pool_address.example.name
}
