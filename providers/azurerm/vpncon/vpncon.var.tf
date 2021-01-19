#================================================================================
#
# VPNCON.VAR.TF

variable "location" {
    type = string
	default = "location"
}
variable "resource_group" {
    type = string
	default = "resource_group"
}
variable "vpncon_name" {
    type = string
	default = "vpncon_name"
}
variable "vpncon_vnetgw_id" {
    type = string
    default = "vpncon_localgw_id"
}
variable "vpncon_localgw_id" {
    type = string
    default = "vpncon_localgw_id"
}
variable "vpncon_shared_key" {
    type = string
    default = "vpncon_shared_key"
}