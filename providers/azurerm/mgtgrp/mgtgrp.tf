#================================================================================
#
# MGTGRP.TF

resource "azurerm_management_group" "example_parent" {
	count = var.to_provision == true ? 1 : 0
	display_name = var.mgtgrp_display_name[count.index]
	name = var.mgtgrp_name[count.index]
	parent_management_group_id = var.mgtgrp_parent_id[count.index]
}

output "mgtgrp_display_name" {
	value = azurerm_management_group.example_parent.display_name[count.index]
}
output "mgtgrp_name" {
	value = azurerm_management_group.example_parent.name[count.index]
}
output "mgtgrp_parent_id" {
	value = azurerm_management_group.example_parent.parent_management_group_id[count.index]
}