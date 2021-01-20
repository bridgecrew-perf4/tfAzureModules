#================================================================================
#
# PEER.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "peer_name" {
    type = string
	default = "peer_name"
}
variable "from_vnet_name" {
	type = string
    default = "from_vnet_name"
}
variable "to_vnet_id" {
    type = string
    default = "to_vnet_id"
}