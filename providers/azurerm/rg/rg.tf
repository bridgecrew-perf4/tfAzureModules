#================================================================================
#
# RG.TF

resource "azurerm_resource_group" "example" {
	count = var.to_provision == true ? 1 : 0
	name = var.rg_name[count.index]
	location = var.rg_location[count.index]
}

output "rg_name" {
	value = azurerm_resource_group.example.name[count.index]
}
output "rg_location" {
	value = azurerm_resource_group.example.location[count.index]
}