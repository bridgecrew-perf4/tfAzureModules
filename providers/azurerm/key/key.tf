#================================================================================
#
# KEY.TF

resource "azurerm_key_vault_key" "generated" {
  name         = var.key_name
  key_vault_id = var.key_vault_id
  key_type     = var.key_type
  key_size     = var.key_size

  key_opts = var.key_opts
}

output "key_id" {
    value = azurerm_key_vault_key.generated.id
}
output "key_name" {
    value = azurerm_key_vault_key.generated.name
}
output "key_version" {
    value = azurerm_key_vault_key.generated.version
}