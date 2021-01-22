#================================================================================
#
# STORAGE.VAR.TF

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
variable "storage_name" {
    type = string
	default = "storage_name"
}
variable "account_tier" {
    type = string
	default = "account_tier"
}
variable "account_replication_type" {
    type = string
	default = "account_replication_type"
}
variable "enable_https_traffic_only" {
    type = bool
	default = true
}