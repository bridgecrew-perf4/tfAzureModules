#================================================================================
#
# LBBACKENDADDRESSPOOL.TF

resource "azurerm_lb_backend_address_pool" "example" {
  loadbalancer_id = azurerm_lb.example.id
  name            = "BackEndAddressPool"
}

output "azurerm_lb_backend_address_pool_id" {
    value = azurerm_lb_backend_address_pool.example.id
}
output "azurerm_lb_backend_address_pool_name" {
    value = azurerm_lb_backend_address_pool.example.name
}
output "azurerm_lb_backend_address_pool_backend_ip_configurations" {
    value = azurerm_lb_backend_address_pool.example.backend_ip_configurations
}
output "azurerm_lb_backend_address_pool_load_balancing_rules" {
    value = azurerm_lb_backend_address_pool.example.load_balancing_rules
}
output "azurerm_lb_backend_address_pool_outbound_rules" {
    value = azurerm_lb_backend_address_pool.example.outbound_rules
}
