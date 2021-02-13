resource "azurerm_lb" "example" {
  name                = var.lb_name
  location            = var.rg_location
  resource_group_name = var.rg_name

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
output "lb_frontend_ip_configuration_name" {
    value = azurerm_lb.example.frontend_ip_configuration_name
}
output "lb_frontend_ip_configuration_public_ip_address_id" {
    value = azurerm_lb.example.frontend_ip_configuration_public_ip_address_id
}
