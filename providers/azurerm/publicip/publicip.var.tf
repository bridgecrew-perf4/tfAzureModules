#================================================================================
#
# PUBLICIP.VAR.TF

variable "rg_location" {
	type = string
	default = "rg_location"
}
variable "rg_name" {
	type = string
	default = "rg_name"
}
variable "publicip_name" {
    type = string
	default = "publicip_name"
}
variable "allocation_method" {
	type = string
    default = "allocation_method"
}