#================================================================================
#
# LBRULE.TF

resource "azurerm_lb_rule" "example" {
  resource_group_name            = var.rg_name
  loadbalancer_id                = var.lb_id
  name                           = var.lbrule_name
  protocol                       = var.lbrule_protocol
  frontend_port                  = var.lbrule_frontend_port
  backend_port                   = var.lbrule_backend_port
  frontend_ip_configuration_name = var.lbrule_frontend_ip_configuration_name
}

output "lbrule_id" {
  value = azurem_lb_rule.example.id
}
output "lbrule_name" {
  value = azurem_lb_rule.example.name
}
