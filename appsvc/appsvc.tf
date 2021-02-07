resource "azurerm_app_service" "example" {
  name                = var.appsvc_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  app_service_plan_id = var.site_config_appsvcplan_id

  site_config {
    site_config_dotnet_framework_version = var.site_config_dotnet_framework_version
    site_config_remote_debugging_enabled = var.site_config_remote_debugging_enabled
    site_config_remote_debugging_version = var.site_config_remote_debugging_version
    site_config_scm_type                 = var.site_config_scm_type
    site_config_linux_fx_version = var.site_config_linux_fx_version
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }

  connection_string {
    connection_string_name  = var.connection_string_name
    connection_string_type  = var.connection_string_type
    connection_string_value = var.connection_string_value
  }
}

output "appsvc_id" {
    value = azurerm_app_service.example.id
}
output "appsvc_name" {
    value = azurerm_app_service.example.name
}
output "appsvc_default_site_hostname" {
  value = "https://${azurerm_app_service.example.default_site_hostname}"
}
output "appsvc_custom_domain_verification_id" {
    value = azurerm_app_service.example.custom_domain_verification_id
}
output "appsvc_source_control" {
    value = azurerm_app_service.example.source_control
}
output "appsvc_site_credential" {
    value = azurerm_app_service.example.site_credential
}
output "appsvc_identity" {
    value = azurerm_app_service.example.identity
}
