#================================================================================
#
# KEYVAULTACCESSPOLICY.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "key_vault_id" {
    type = string
	default = "key_vault_id"
}
variable "object_id" {
    type = string
	default = data.azurerm_client_config.current.object_id
}
variable "application_id" {
    type = string
	default = "application_id"
}
variable "key_permissions" {
    type = list
	default = [
        "key_permissions"
    ]
}
variable "secret_permissions" {
    type = list
	default = [
        "secret_permissions"
    ]
}
variable "storage_permissions" {
    type = list
	default = [
        "storage_permissions"
    ]
}
variable "certificate_permissions" {
    type = list
	default = [
        "certificate_permissions"
    ]
}