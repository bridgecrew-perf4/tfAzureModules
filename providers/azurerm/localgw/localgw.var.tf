#================================================================================
#
# LOCALGW.VAR.TF

variable "location" {
    type = string
	default = "location"
}
variable "resource_group" {
    type = string
	default = "resource_group"
}
variable "localgw_name" {
    type = string
	default = "localgw_name"
}
variable "gateway_address" {
    default = [ "10.255.255.254" ]
}
variable "address_space" {
    default = "address_space"
}