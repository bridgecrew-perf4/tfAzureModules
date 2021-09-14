#================================================================================
#
# RG.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_name" {
    type = string
    default = "rg_name"
}
variable "rg_location" {
    type = string
    default = "rg_location"
}
variable "rg_tags" {
    type = map
    default = {
		"ManagementGroup" = "A&E 700 R&D",
		"Environment" = "Demo",
		"AutomatedBy" = "Terraform",
		"Note1" = "Do not manually change",
		"POCName" = "ronc@mindpointgroup.com",
		"POCPhone" = "843.330.6769",
		"Project" = "Zero Trust Demo"
    }
}