resource "azurerm_lb" "example" {
  name                = var.lb_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  sku                 = var.lb_sku

  frontend_ip_configuration {
    name                 = var.frontend_ip_configuration_name
    public_ip_address_id = var.frontend_ip_configuration_public_ip_address_id
  }
}

output "lb_id" {
    value = azurerm_lb.example.id
}
output "lb_name" {
    value = azurerm_lb.example.name
}
output "lb_frontend_ip_configuration" {
    value = azurerm_lb.example.frontend_ip_configuration
}
output "lb_frontend_private_ip_address" {
    value = azurerm_lb.example.private_ip_address
}
