#================================================================================
#
# KEYVAULT.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_location" {
    type = string
	default = "rg_location"
}
variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "keyvault_name" {
    type = string
	default = "keyvault_name"
}
variable "enabled_for_disk_encryption" {
	type = bool
    default = true
}
variable "enabled_for_deployment" {
	type = bool
    default = false
}
variable "soft_delete_retention_days" {
	type = number
    default = 7
}
variable "purge_protection_enabled" {
	type = bool
    default = false
}
variable "sku_name" {
	type = string
    default = "standard"
}
/*variable "key_permissions" {
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
}*/