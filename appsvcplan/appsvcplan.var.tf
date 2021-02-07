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
    variable "name" {
    type = string
    default = "name"
}
variable "kind" {
    type = string
    default = "Windows"
}
variable "reserved" {
    type = bool
    default = false
}
variable "is_xenon" {
    type = bool
    default = false
}
variable "skutier" {
    type = string
    default = "Basic"
}
variable "skusize" {
    type = string
    default = "B2"
}
variable "skucapacity" {
    type = number
    default = 1
}