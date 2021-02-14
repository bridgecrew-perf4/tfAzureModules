resource "azurerm_lb_probe" "example" {
  resource_group_name = azurerm_resource_group.example.name
  lb_id     = azurerm_lb.example.id
  name                = "ssh-running-probe"
  port                = 22
}
