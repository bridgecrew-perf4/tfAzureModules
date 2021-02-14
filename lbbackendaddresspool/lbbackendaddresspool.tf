#================================================================================
#
# LBBACKENDADDRESSPOOL.TF

resource "azurerm_lb_backend_address_pool" "example" {
  lb_id = var.lbbackendaddresspool_lb_id
  name  = var.lbbackendaddresspool_name
}

output "azurerm_lbbackendaddresspool_id" {
    value = azurerm_lb_backend_address_pool.example.id
}
output "azurerm_lbbackendaddresspool_name" {
    value = azurerm_lb_backend_address_pool.example.name
}
output "azurerm_lbbackendaddresspool_backend_ip_configurations" {
    value = azurerm_lb_backend_address_pool.example.backend_ip_configurations
}
output "azurerm_lbbackendaddresspool_load_balancing_rules" {
    value = azurerm_lb_backend_address_pool.example.load_balancing_rules
}
output "azurerm_lbbackendaddresspool_outbound_rules" {
    value = azurerm_lb_backend_address_pool.example.outbound_rules
}
