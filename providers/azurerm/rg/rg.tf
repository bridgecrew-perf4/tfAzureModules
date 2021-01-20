#================================================================================
#
# RG.TF

resource "azurerm_resource_group" "example" {
	count = var.to_provision == true ? 1 : 0
	name = var.rg_name
	location = var.rg_location
}

output "rg_name" {
	value = azurerm_resource_group.example[count.index].name
}
output "rg_location" {
	value = azurerm_resource_group.example[count.index].location
}