#================================================================================
#
# APPSVC.VAR.TF

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
    variable "appsvc_name" {
    type = string
    default = "appsvc_name"
}
variable "site_config_appsvcplan_id" {
    type = string
    default = "appsvcplan_id"
}
variable "site_config_dotnet_framework_version" {
    type = string
    default = null
}
variable "site_config_remote_debugging_enabled" {
    type = bool
    default = false
}
variable "site_config_remote_debugging_version" {
    type = string
    default = null
}
variable "site_config_scm_type" {
    type = string
    default = "LocalGit"
}
variable "site_config_linux_fx_version" {
    type = string
}
variable "connection_string_name" {
    type = string
    default = null
}
variable "connection_string_type" {
    type = string
    default = null
}
variable "connection_string_value" {
    type = string
    default = null
}
