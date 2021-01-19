#================================================================================
#
# RG.TF

resource "azurerm_resource_group" "example" {
	name = var.rg_name
	location = var.rg_location
}

output "rg_name" {
	value = azurerm_resource_group.example.name
}
output "rg_location" {
	value = azurerm_resource_group.example.location
}