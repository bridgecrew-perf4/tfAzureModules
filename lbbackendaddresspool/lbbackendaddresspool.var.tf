
#
# LBBACKENDADDRESSPOOL.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "lb_backend_address_pool_name" {
	type = string
	default = "lb_backend_address_pool_name"
}
variable "lb_backend_address_pool_loadbalancer_id" {
	type = string
	default = "lb_backend_address_pool_loadbalancer_id"
}
