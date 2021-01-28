#================================================================================
#
# NSR.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_name" {
	type = string
	default = "rg_name"
}
variable "nsr_name" {
    type = string
	default = "nsr_name"
}
variable "priority" {
    type = number
    default = null
}
variable "direction" {
    type = string
    default = "direction"
}
variable "access" {
    type = string
    default = "access"
}
variable "protocol" {
    type = string
    default = "protocol"
}
variable "source_port_range" {
    type = string
    default = "source_port_range"
}
variable "destination_port_range" {
    type = string
    default = "destination_port_range"
}
variable "source_address_prefix" {
    type = string
    default = "source_address_prefix"
}
variable "destination_address_prefix" {
    type = string
    default = "destination_address_prefix"
}
variable "network_security_group_name" {
    type = string
    default = "network_security_group_name"
}