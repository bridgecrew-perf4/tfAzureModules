#================================================================================
#
# VNETGW.VAR.TF

variable "rg_location" {
    type = string
	default = "rg_location"
}
variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "vnetgw_name" {
    type = string
	default = "vnetgw_name"
}
variable "type" {
    type = string
    default = "type"
}
variable "vpn_type" {
    type = string
    default = "vpn_type"
}
variable "active_active" {
    type = bool
    default = false
}
variable "enable_bgp" {
    type = bool
    default = false
}
variable "sku" {
    type = string
    default = "sku"
}
variable "ip_config_name" {
    type = string
    default = "ip_config_name"
}
variable "public_ip_address_id" {
    type = string
    default = "public_ip_address_id"
}
variable "private_ip_address_allocation" {
    type = string
    default = "private_ip_address_allocation"
}
variable "subnet_id" {
    type = string
    default = "subnet_id"
}
variable "address_space" {
    type = list
    default = [
        "10.0.1.0/24"
    ]
}
variable "vpn_client_protocols" {
    type = list
    default = [
        "vpn_client_protocols"
    ]
}