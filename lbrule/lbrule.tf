resource "azurerm_lb_rule" "example" {
  resource_group_name            = azurerm_resource_group.example.name
  lb_id                = azurerm_lb.example.id
  name                           = "LBRule"
  protocol                       = "Tcp"
  frontend_port                  = 3389
  backend_port                   = 3389
  frontend_ip_configuration_name = "PublicIPAddress"
}
