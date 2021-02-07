resource "azurerm_app_service_plan" "example" {
  name                = var.name
  location            = var.rg_location
  resource_group_name = var.rg_name
  kind                = var.kind
  reserved            = var.reserved
  is_xenon            = var.is_xenon

  sku {
    tier = var.skutier
    size = var.skusize
    capacity = var.skucapacity
  }
}

output "app_service_plan_id" {
    value = azurerm_app_service_plan.example.id
}
output "app_service_plan_name" {
    value = azurerm_app_service_plan.example.name
}
output "app_service_plan_kind" {
    value = azurerm_app_service_plan.example.kind
}
output "app_service_plan_maximum_number_of_workers" {
    value = azurerm_app_service_plan.example.maximum_number_of_workers
}