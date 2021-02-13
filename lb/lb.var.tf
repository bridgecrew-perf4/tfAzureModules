#================================================================================
#
# LB.VAR.TF

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
variable "lb_name" {
    type = string
	default = "lb_name"
}
variable "frontend_ip_configuration_name" {
    type = string
    default = "frontend_ip_configuration_name"
}
variable "frontend_ip_configuration_public_ip_address_id" {
    type = string
    default = "frontend_ip_configuration_public_ip_address_id"
}
